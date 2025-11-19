@interface _SKRaptorQRReceptionDetails
- (_SKRaptorQRReceptionDetails)init;
- (unsigned)symbolsShouldHaveReceived:(unint64_t)a3;
- (void)updateWithESI:(unsigned int)a3;
@end

@implementation _SKRaptorQRReceptionDetails

- (_SKRaptorQRReceptionDetails)init
{
  v3.receiver = self;
  v3.super_class = _SKRaptorQRReceptionDetails;
  result = [(_SKRaptorQRReceptionDetails *)&v3 init];
  if (result)
  {
    *&result->_firstESI = -1;
    result->_largestESI = -1;
  }

  return result;
}

- (void)updateWithESI:(unsigned int)a3
{
  self->_lastESI = a3;
  if (self->_firstESI == -1)
  {
    self->_firstESI = a3;
    largestESI = self->_largestESI;
    if (largestESI == -1 || largestESI < a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = self->_largestESI;
    if (v3 == -1 || v3 < a3)
    {
LABEL_12:
      self->_largestESI = a3;
    }
  }
}

- (unsigned)symbolsShouldHaveReceived:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  firstESI = self->_firstESI;
  if (firstESI == -1)
  {
    result = 0;
  }

  else
  {
    lastESI = self->_lastESI;
    if (lastESI >= firstESI)
    {
      result = lastESI - firstESI + 1;
    }

    else
    {
      largestESI = self->_largestESI;
      v6 = largestESI / a3;
      v7 = ceil(v6);
      if (v7 - v6 <= 0.1)
      {
        largestESI = (v7 * a3);
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [_SKRaptorQRReceptionDetails symbolsShouldHaveReceived:];
        }

        v10 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          v11 = self->_largestESI;
          v14 = 134218496;
          v15 = v6;
          v16 = 1024;
          v17 = v11;
          v18 = 2048;
          v19 = a3;
          _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "_largestESI / symbolCount = %lf (%u / %lu), not close to an integer. Using a non-integer repair factor, or a lot of packets get lost while host sends packets with largest esi?", &v14, 0x1Cu);
        }

        firstESI = self->_firstESI;
        lastESI = self->_lastESI;
      }

      result = largestESI - firstESI + lastESI + 2;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

@end