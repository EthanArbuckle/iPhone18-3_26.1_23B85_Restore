@interface ASStreamWBXMLToXMLConverter
- (BOOL)runSynchronously;
- (int64_t)readFromInput;
- (void)dealloc;
- (void)outputData:(id)data;
- (void)outputString:(id)string;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation ASStreamWBXMLToXMLConverter

- (void)outputData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = 0;
    do
    {
      output = self->_output;
      v6 = dataCopy;
      v4 += -[NSOutputStream write:maxLength:](output, "write:maxLength:", [dataCopy bytes] + v4, objc_msgSend(dataCopy, "length") - v4);
    }

    while (v4 < [dataCopy length]);
  }
}

- (void)outputString:(id)string
{
  stringCopy = string;
  uTF8String = [string UTF8String];
  v7 = strlen(uTF8String);
  if (v7 >= 1)
  {
    v8 = v7;
      ;
    }
  }
}

- (BOOL)runSynchronously
{
  [(NSInputStream *)self->_input setDelegate:self];
  input = self->_input;
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSInputStream *)input scheduleInRunLoop:currentRunLoop forMode:@"ASWBXMLToXMLConverterRunLoopMode"];

  [(NSInputStream *)self->_input open];
  [(NSOutputStream *)self->_output setDelegate:self];
  output = self->_output;
  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSOutputStream *)output scheduleInRunLoop:currentRunLoop2 forMode:@"ASWBXMLToXMLConverterRunLoopMode"];

  [(NSOutputStream *)self->_output open];
  [(ASWBXMLToXMLConverter *)self setDone:0];
  if (![(ASWBXMLToXMLConverter *)self done])
  {
    do
    {
      currentRunLoop3 = [MEMORY[0x277CBEB88] currentRunLoop];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      [currentRunLoop3 runMode:@"ASWBXMLToXMLConverterRunLoopMode" beforeDate:distantFuture];
    }

    while (![(ASWBXMLToXMLConverter *)self done]);
  }

  return 1;
}

- (int64_t)readFromInput
{
  input = self->_input;
  writableBufferPtr = [(ASWBXMLToXMLConverter *)self writableBufferPtr];
  writableBufferSize = [(ASWBXMLToXMLConverter *)self writableBufferSize];

  return [(NSInputStream *)input read:writableBufferPtr maxLength:writableBufferSize];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  switch(event)
  {
    case 0x10uLL:
      goto LABEL_6;
    case 8uLL:
      NSLog(&cfstr_StreamErrorOcc.isa);
LABEL_6:
      [(ASWBXMLToXMLConverter *)self setDone:1];
      break;
    case 2uLL:
      [(ASWBXMLToXMLConverter *)self handleBytesAvailable];
      break;
  }
}

- (void)dealloc
{
  [(NSInputStream *)self->_input close];
  [(NSOutputStream *)self->_output close];
  v3.receiver = self;
  v3.super_class = ASStreamWBXMLToXMLConverter;
  [(ASStreamWBXMLToXMLConverter *)&v3 dealloc];
}

@end