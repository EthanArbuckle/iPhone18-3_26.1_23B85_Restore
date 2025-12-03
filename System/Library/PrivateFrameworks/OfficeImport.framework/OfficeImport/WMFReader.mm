@interface WMFReader
- (int)checkBytesAvailable:(unsigned int)available;
- (int)moveDataCursor:(unsigned int)cursor;
- (int)play:(id)play;
- (int)playHeaders;
- (int)playRecord;
@end

@implementation WMFReader

- (int)playHeaders
{
  v3 = 18;
  v4 = [(WMFReader *)self checkBytesAvailable:18];
  if (!v4)
  {
    if (*self->m_pBuffer == -1698247209)
    {
      v3 = 40;
    }

    else
    {
      v3 = 18;
    }
  }

  if ([(WMFReader *)self checkBytesAvailable:v3]| v4)
  {
    return -7;
  }

  v6 = [(WMFPlayer *)self->m_player playHeader:v3 in_pRecord:self->m_pBuffer];
  [(WMFReader *)self moveDataCursor:v3];
  return v6;
}

- (int)playRecord
{
  if (self->m_cursor >= self->m_length)
  {
    return -2;
  }

  if ([(WMFReader *)self checkBytesAvailable:4])
  {
    goto LABEL_3;
  }

  m_pBuffer = self->m_pBuffer;
  v6 = *(m_pBuffer + 3);
  v7 = (*m_pBuffer | (*(m_pBuffer + 2) << 16)) & 0xFFFFFF | (v6 << 24);
  if (v7 < 3)
  {
    return -2;
  }

  if (((v6 << 24) & 0x80000000) == 0)
  {
    v3 = 2 * v7;
    if (![(WMFReader *)self checkBytesAvailable:v3])
    {
      v4 = [(WMFPlayer *)self->m_player play:v3 in_pRecord:self->m_pBuffer];
      goto LABEL_4;
    }
  }

LABEL_3:
  v3 = self->m_length - self->m_cursor;
  v4 = -7;
LABEL_4:
  [(WMFReader *)self moveDataCursor:v3];
  return v4;
}

- (int)play:(id)play
{
  playCopy = play;
  self->m_pBuffer = [playCopy bytes];
  self->m_length = [playCopy length];
  self->m_cursor = 0;
  self->m_recordsRead = 0;
  playHeaders = [(WMFReader *)self playHeaders];
  if (!playHeaders)
  {
    while (1)
    {
      playRecord = [(WMFReader *)self playRecord];
      LOBYTE(playHeaders) = (playRecord == -7) | playHeaders;
      if (playRecord != -7)
      {
        if (playRecord)
        {
          break;
        }
      }

      ++self->m_recordsRead;
    }

    if (playHeaders)
    {
      playHeaders = -7;
    }

    else
    {
      playHeaders = playRecord;
    }
  }

  [(WMFPlayer *)self->m_player done];

  return playHeaders;
}

- (int)checkBytesAvailable:(unsigned int)available
{
  v4 = self->m_cursor + available;
  result = -2;
  if (!HIDWORD(v4))
  {
    if (self->m_length >= v4)
    {
      return 0;
    }

    else
    {
      return -2;
    }
  }

  return result;
}

- (int)moveDataCursor:(unsigned int)cursor
{
  self->m_pBuffer += cursor;
  self->m_cursor += cursor;
  return 0;
}

@end