@interface STStream
- (STStream)initWithCStream:(_Stream *)stream;
- (char)readChar8;
- (double)readFloat64;
- (float)readFloat32;
- (id)getInfo;
- (id)readBytes:(unsigned int)bytes;
- (id)readString16:(unsigned int)string16;
- (int)readSInt32;
- (signed)readSInt16;
- (unint64_t)readUInt64;
- (unsigned)getPos;
- (unsigned)readBool8;
- (unsigned)readChar16;
- (unsigned)readUInt16;
- (unsigned)readUInt32;
- (unsigned)readUInt8;
- (void)close;
- (void)dealloc;
- (void)seek:(int)seek fromOrigin:(int)origin;
- (void)setClass:(id)class;
- (void)writeBool8:(unsigned __int8)bool8;
- (void)writeBytes:(id)bytes;
- (void)writeChar16:(unsigned __int16)char16;
- (void)writeChar8:(char)char8;
- (void)writeFloat32:(float)float32;
- (void)writeFloat64:(double)float64;
- (void)writeSInt16:(signed __int16)int16;
- (void)writeSInt32:(int)int32;
- (void)writeString16:(id)string16;
- (void)writeString16NoTerminator:(id)terminator;
- (void)writeUInt16:(unsigned __int16)int16;
- (void)writeUInt32:(unsigned int)int32;
- (void)writeUInt8:(unsigned __int8)int8;
@end

@implementation STStream

- (STStream)initWithCStream:(_Stream *)stream
{
  v8.receiver = self;
  v8.super_class = STStream;
  v4 = [(STSStgObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->m_pCStream = stream;
    v6 = v4;
  }

  return v5;
}

- (void)dealloc
{
  [(STStream *)self close];
  v3.receiver = self;
  v3.super_class = STStream;
  [(STStream *)&v3 dealloc];
}

- (void)close
{
  if (self->m_pCStream)
  {
    closeStream(&self->m_pCStream);
  }
}

- (id)getInfo
{
  v2 = [[STStgInfo alloc] initWithStgInfo:getStreamInfo(self->m_pCStream)];
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Structured Storage library memory failure"];
  }

  return v2;
}

- (void)seek:(int)seek fromOrigin:(int)origin
{
  if (origin == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (origin)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = streamSeek(self->m_pCStream, seek, v6);

  [STSStgObject throwIfError:v7];
}

- (unsigned)getPos
{
  v3 = 0;
  [STSStgObject throwIfError:streamGetPos(self->m_pCStream, &v3)];
  return v3;
}

- (void)setClass:(id)class
{
  v4 = *MEMORY[0x277D85DE8];
  classCopy = class;
  [STSStgObject throwIfError:streamSetClass(self->m_pCStream, &classCopy)];
}

- (id)readBytes:(unsigned int)bytes
{
  v10 = 0;
  [STSStgObject throwIfError:streamGetBytesAvailableToRead(self->m_pCStream, &v10)];
  if (v10 >= bytes)
  {
    bytesCopy = bytes;
  }

  else
  {
    bytesCopy = v10;
  }

  v9 = bytesCopy;
  v6 = [MEMORY[0x277CBEB28] dataWithLength:?];
  v7 = v6;
  if (v6)
  {
    +[STSStgObject throwIfError:](STSStgObject, "throwIfError:", streamRead(self->m_pCStream, [v6 mutableBytes], &v9));
    [v7 setLength:v9];
  }

  return v7;
}

- (char)readChar8
{
  v4 = 0;
  v3 = 1;
  [STSStgObject throwIfError:streamRead(self->m_pCStream, &v4, &v3)];
  return v4;
}

- (unsigned)readUInt8
{
  v4 = 0;
  v3 = 1;
  [STSStgObject throwIfError:streamRead(self->m_pCStream, &v4, &v3)];
  return v4;
}

- (unsigned)readBool8
{
  v4 = 0;
  v3 = 1;
  [STSStgObject throwIfError:streamRead(self->m_pCStream, &v4, &v3)];
  return v4 != 0;
}

- (signed)readSInt16
{
  v3 = 0;
  [STSStgObject throwIfError:readSInt16(self->m_pCStream, &v3)];
  return v3;
}

- (unsigned)readUInt16
{
  v3 = 0;
  [STSStgObject throwIfError:readUInt16(self->m_pCStream, &v3)];
  return v3;
}

- (int)readSInt32
{
  v3 = 0;
  [STSStgObject throwIfError:readSInt32(self->m_pCStream, &v3)];
  return v3;
}

- (unsigned)readUInt32
{
  v3 = 0;
  [STSStgObject throwIfError:readSInt32(self->m_pCStream, &v3)];
  return v3;
}

- (unint64_t)readUInt64
{
  v3 = 0;
  [STSStgObject throwIfError:readUInt64(self->m_pCStream, &v3)];
  return v3;
}

- (float)readFloat32
{
  v3 = 0.0;
  [STSStgObject throwIfError:readFloat32(self->m_pCStream, &v3)];
  return v3;
}

- (double)readFloat64
{
  v3 = 0.0;
  [STSStgObject throwIfError:readFloat64(self->m_pCStream, &v3)];
  return v3;
}

- (unsigned)readChar16
{
  v3 = 0;
  [STSStgObject throwIfError:readUInt16(self->m_pCStream, &v3)];
  return v3;
}

- (id)readString16:(unsigned int)string16
{
  v5 = smalloc_typed(string16 + 1, 2uLL, 0x1000040BDFB0063uLL);
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Structured Storage library memory failure"];
  }

  LODWORD(v16) = string16;
  [STSStgObject throwIfError:readString16(self->m_pCStream, &v16, v5)];
  v5[string16] = 0;
  v6 = smalloc_typed(v16, 2uLL, 0x1000040BDFB0063uLL);
  v7 = v6;
  if (v6)
  {
    v8 = v16;
    if (v16 < 1)
    {
      v13 = 0;
    }

    else
    {
      v9 = 0;
      v10 = v5;
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v12)
        {
          *(v6 + v9++) = v11;
        }

        --v8;
      }

      while (v8);
      v13 = v9;
    }

    free(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithCharacters:v7 length:v13];
  free(v7);

  return v14;
}

- (void)writeBytes:(id)bytes
{
  bytesCopy = bytes;
  v7 = [bytesCopy length];
  m_pCStream = self->m_pCStream;
  bytes = [bytesCopy bytes];

  [STSStgObject throwIfError:streamWrite(m_pCStream, bytes, &v7)];
}

- (void)writeUInt8:(unsigned __int8)int8
{
  int8Copy = int8;
  v3 = 1;
  [STSStgObject throwIfError:streamWrite(self->m_pCStream, &int8Copy, &v3)];
}

- (void)writeChar8:(char)char8
{
  char8Copy = char8;
  v3 = 1;
  [STSStgObject throwIfError:streamWrite(self->m_pCStream, &char8Copy, &v3)];
}

- (void)writeBool8:(unsigned __int8)bool8
{
  bool8Copy = bool8;
  v3 = 1;
  [STSStgObject throwIfError:streamWrite(self->m_pCStream, &bool8Copy, &v3)];
}

- (void)writeSInt16:(signed __int16)int16
{
  v3 = writeSInt16(self->m_pCStream, int16);

  [STSStgObject throwIfError:v3];
}

- (void)writeUInt16:(unsigned __int16)int16
{
  v3 = writeSInt16(self->m_pCStream, int16);

  [STSStgObject throwIfError:v3];
}

- (void)writeSInt32:(int)int32
{
  v3 = writeSInt32(self->m_pCStream, *&int32);

  [STSStgObject throwIfError:v3];
}

- (void)writeUInt32:(unsigned int)int32
{
  v3 = writeSInt32(self->m_pCStream, *&int32);

  [STSStgObject throwIfError:v3];
}

- (void)writeFloat32:(float)float32
{
  v3 = writeFloat32(self->m_pCStream, float32);

  [STSStgObject throwIfError:v3];
}

- (void)writeFloat64:(double)float64
{
  v3 = writeFloat64(self->m_pCStream, float64);

  [STSStgObject throwIfError:v3];
}

- (void)writeChar16:(unsigned __int16)char16
{
  v3 = writeSInt16(self->m_pCStream, char16);

  [STSStgObject throwIfError:v3];
}

- (void)writeString16:(id)string16
{
  string16Copy = string16;
  v7 = [string16Copy length] + 1;
  m_pCStream = self->m_pCStream;
  cWideString = [string16Copy cWideString];

  [STSStgObject throwIfError:writeString16(m_pCStream, cWideString, &v7)];
}

- (void)writeString16NoTerminator:(id)terminator
{
  terminatorCopy = terminator;
  v7 = [terminatorCopy length];
  m_pCStream = self->m_pCStream;
  cWideString = [terminatorCopy cWideString];

  [STSStgObject throwIfError:writeString16(m_pCStream, cWideString, &v7)];
}

@end