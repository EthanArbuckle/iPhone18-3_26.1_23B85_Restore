@interface ECPackedDataUtils
+ (char)prepareForDataOfLength:(unsigned int)length atIndex:(unsigned int)index withPreviousLength:(unsigned int)previousLength inPackedData:(__CFData *)data packedDataSize:(unsigned int)size;
+ (id)dumpDataToHexadecimalString:(char *)string start:(unsigned int)start stop:(unsigned int)stop nicelyFormatted:(BOOL)formatted;
+ (id)readStringFromData:(char *)data atOffset:(unsigned int)offset withLength:(unsigned int)length;
+ (void)writeString:(id)string toPackedData:(__CFData *)data packedDataSize:(unsigned int)size atIndex:(unsigned int)index withPreviousLength:(unsigned __int16)length outLength:(unsigned __int16 *)outLength;
@end

@implementation ECPackedDataUtils

+ (char)prepareForDataOfLength:(unsigned int)length atIndex:(unsigned int)index withPreviousLength:(unsigned int)previousLength inPackedData:(__CFData *)data packedDataSize:(unsigned int)size
{
  dataCopy = data;
  if (data)
  {
    if (length > previousLength)
    {
      CFDataIncreaseLength(data, length - previousLength);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(dataCopy);
    if (MutableBytePtr)
    {
      dataCopy = &MutableBytePtr[index];
      if (length != previousLength)
      {
        memmove(dataCopy + length, dataCopy + previousLength, size - (previousLength + index));
      }
    }

    else
    {
      return 0;
    }
  }

  return dataCopy;
}

+ (id)readStringFromData:(char *)data atOffset:(unsigned int)offset withLength:(unsigned int)length
{
  if (length)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCharacters:&data[offset] length:length >> 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)writeString:(id)string toPackedData:(__CFData *)data packedDataSize:(unsigned int)size atIndex:(unsigned int)index withPreviousLength:(unsigned __int16)length outLength:(unsigned __int16 *)outLength
{
  stringCopy = string;
  v10 = [stringCopy length];
  if ((2 * v10) < 0x10000)
  {
    if (outLength)
    {
      *outLength = 2 * v10;
    }

    [stringCopy getCharacters:objc_msgSend(self range:{"prepareForDataOfLength:atIndex:withPreviousLength:inPackedData:packedDataSize:"), 0, v10}];
    v11 = stringCopy;
  }

  else
  {
    *outLength = 0;
    v11 = stringCopy;
  }
}

+ (id)dumpDataToHexadecimalString:(char *)string start:(unsigned int)start stop:(unsigned int)stop nicelyFormatted:(BOOL)formatted
{
  if (stop == start)
  {
    string = &stru_286EE1130;
  }

  else
  {
    formattedCopy = formatted;
    string = [MEMORY[0x277CCAB68] string];
    v11 = stop - start;
    if (stop > start)
    {
      v12 = 0;
      startCopy = start;
      do
      {
        if (startCopy > start && formattedCopy && (v12 & 3) == 0)
        {
          [(__CFString *)string appendString:@" "];
        }

        [(__CFString *)string appendFormat:@"%02X", string[startCopy++]];
        ++v12;
      }

      while (v11 != v12);
    }

    if (formattedCopy)
    {
      [(__CFString *)string appendFormat:@" (%i bytes)", v11];
    }
  }

  return string;
}

@end