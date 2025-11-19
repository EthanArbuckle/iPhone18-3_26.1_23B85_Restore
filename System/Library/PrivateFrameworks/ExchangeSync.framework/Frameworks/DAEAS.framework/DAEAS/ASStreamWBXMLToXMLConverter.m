@interface ASStreamWBXMLToXMLConverter
- (BOOL)runSynchronously;
- (int64_t)readFromInput;
- (void)dealloc;
- (void)outputData:(id)a3;
- (void)outputString:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation ASStreamWBXMLToXMLConverter

- (void)outputData:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = 0;
    do
    {
      output = self->_output;
      v6 = v7;
      v4 += -[NSOutputStream write:maxLength:](output, "write:maxLength:", [v7 bytes] + v4, objc_msgSend(v7, "length") - v4);
    }

    while (v4 < [v7 length]);
  }
}

- (void)outputString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
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
  v4 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSInputStream *)input scheduleInRunLoop:v4 forMode:@"ASWBXMLToXMLConverterRunLoopMode"];

  [(NSInputStream *)self->_input open];
  [(NSOutputStream *)self->_output setDelegate:self];
  output = self->_output;
  v6 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSOutputStream *)output scheduleInRunLoop:v6 forMode:@"ASWBXMLToXMLConverterRunLoopMode"];

  [(NSOutputStream *)self->_output open];
  [(ASWBXMLToXMLConverter *)self setDone:0];
  if (![(ASWBXMLToXMLConverter *)self done])
  {
    do
    {
      v7 = [MEMORY[0x277CBEB88] currentRunLoop];
      v8 = [MEMORY[0x277CBEAA8] distantFuture];
      [v7 runMode:@"ASWBXMLToXMLConverterRunLoopMode" beforeDate:v8];
    }

    while (![(ASWBXMLToXMLConverter *)self done]);
  }

  return 1;
}

- (int64_t)readFromInput
{
  input = self->_input;
  v4 = [(ASWBXMLToXMLConverter *)self writableBufferPtr];
  v5 = [(ASWBXMLToXMLConverter *)self writableBufferSize];

  return [(NSInputStream *)input read:v4 maxLength:v5];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  switch(a4)
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