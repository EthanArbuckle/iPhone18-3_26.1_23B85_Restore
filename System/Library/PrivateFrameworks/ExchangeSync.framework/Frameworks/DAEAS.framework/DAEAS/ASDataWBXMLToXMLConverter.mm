@interface ASDataWBXMLToXMLConverter
- (BOOL)runSynchronously;
- (int64_t)readFromInput;
- (void)dealloc;
- (void)outputString:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation ASDataWBXMLToXMLConverter

- (void)outputString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  v7 = strlen(v6);
  output = self->_output;

  [(NSMutableData *)output appendBytes:v6 length:v7];
}

- (BOOL)runSynchronously
{
  [(NSInputStream *)self->_input setDelegate:self];
  input = self->_input;
  v4 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSInputStream *)input scheduleInRunLoop:v4 forMode:@"ASWBXMLToXMLConverterRunLoopMode"];

  [(NSInputStream *)self->_input open];
  [(ASWBXMLToXMLConverter *)self setDone:0];
  if (![(ASWBXMLToXMLConverter *)self done])
  {
    do
    {
      v5 = [MEMORY[0x277CBEB88] currentRunLoop];
      v6 = [MEMORY[0x277CBEAA8] distantFuture];
      [v5 runMode:@"ASWBXMLToXMLConverterRunLoopMode" beforeDate:v6];
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
  v3.receiver = self;
  v3.super_class = ASDataWBXMLToXMLConverter;
  [(ASDataWBXMLToXMLConverter *)&v3 dealloc];
}

@end