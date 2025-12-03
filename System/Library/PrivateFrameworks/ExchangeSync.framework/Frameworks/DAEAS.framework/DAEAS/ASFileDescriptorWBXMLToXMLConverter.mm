@interface ASFileDescriptorWBXMLToXMLConverter
- (BOOL)runSynchronously;
- (int64_t)readFromInput;
- (void)outputData:(id)data;
- (void)outputString:(id)string;
@end

@implementation ASFileDescriptorWBXMLToXMLConverter

- (void)outputData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = 0;
    do
    {
      if ([(ASWBXMLToXMLConverter *)self done])
      {
        break;
      }

      output = self->_output;
      v6 = dataCopy;
      v7 = write(output, ([dataCopy bytes] + v4), objc_msgSend(dataCopy, "length") - v4);
      if (v7 == -1)
      {
        v8 = __error();
        NSLog(&cfstr_WriteFailedDBa.isa, *v8);
        [(ASWBXMLToXMLConverter *)self setDone:1];
      }

      else
      {
        v4 += v7;
      }
    }

    while (v4 < [dataCopy length]);
  }
}

- (void)outputString:(id)string
{
  stringCopy = string;
  v10 = 0;
  v5 = [stringCopy maximumLengthOfBytesUsingEncoding:4];
  v6 = malloc_type_malloc(v5, 0xF250D992uLL);
  if ([stringCopy getBytes:v6 maxLength:v5 usedLength:&v10 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(stringCopy, "length"), 0}])
  {
    if (v10)
    {
      v7 = 0;
      do
      {
        if ([(ASWBXMLToXMLConverter *)self done])
        {
          break;
        }

        v8 = write(self->_output, &v6[v7], v10 - v7);
        if (v8 == -1)
        {
          v9 = __error();
          NSLog(&cfstr_WriteFailedDBa.isa, *v9);
          [(ASWBXMLToXMLConverter *)self setDone:1];
        }

        else
        {
          v7 += v8;
        }
      }

      while (v7 < v10);
    }
  }

  else
  {
    NSLog(&cfstr_ErrorConvertin.isa, stringCopy);
  }

  free(v6);
}

- (int64_t)readFromInput
{
  input = self->_input;
  bytesToConsumeVector = [(ASWBXMLToXMLConverter *)self bytesToConsumeVector];
  bytesToConsumeCount = [(ASWBXMLToXMLConverter *)self bytesToConsumeCount];
  result = read(input, &bytesToConsumeVector[bytesToConsumeCount], &self->super._buffer[*MEMORY[0x277D85FA0] - [(ASWBXMLToXMLConverter *)self bytesToConsumeCount]- [(ASWBXMLToXMLConverter *)self bytesToConsumeVector]]);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    v7 = __error();
    NSLog(&cfstr_WriteFailedDBa.isa, *v7);
  }

  [(ASWBXMLToXMLConverter *)self setDone:1];
  return 0;
}

- (BOOL)runSynchronously
{
  [(ASWBXMLToXMLConverter *)self setDone:0];
  if (![(ASWBXMLToXMLConverter *)self done])
  {
    do
    {
      [(ASWBXMLToXMLConverter *)self handleBytesAvailable];
    }

    while (![(ASWBXMLToXMLConverter *)self done]);
  }

  return 1;
}

@end