@interface BloodhoundPacketDumper
- (BloodhoundPacketDumper)initWithDumper:(pcap_dumper *)dumper;
- (BloodhoundPacketDumper)initWithFileName:(id)name;
- (void)dealloc;
@end

@implementation BloodhoundPacketDumper

- (BloodhoundPacketDumper)initWithFileName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = BloodhoundPacketDumper;
  v5 = [(BloodhoundPacketDumper *)&v12 init];
  if (v5)
  {
    v6 = pcap_open_dead(157, 0x80000);
    v5->_pcap = v6;
    if (!v6 || ([nameCopy stringByExpandingTildeInPath], v7 = objc_claimAutoreleasedReturnValue(), fileName = v5->_fileName, v5->_fileName = v7, fileName, v9 = pcap_dump_open(v5->_pcap, -[NSString UTF8String](v5->_fileName, "UTF8String")), (v5->_dumper = v9) == 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    pcap_dump_flush(v9);
  }

  v10 = v5;
LABEL_7:

  return v10;
}

- (BloodhoundPacketDumper)initWithDumper:(pcap_dumper *)dumper
{
  v5.receiver = self;
  v5.super_class = BloodhoundPacketDumper;
  result = [(BloodhoundPacketDumper *)&v5 init];
  if (result)
  {
    result->_dumper = dumper;
    result->_externalDumper = 1;
  }

  return result;
}

- (void)dealloc
{
  pcap = self->_pcap;
  if (pcap)
  {
    pcap_close(pcap);
  }

  dumper = self->_dumper;
  if (dumper && !self->_externalDumper)
  {
    pcap_dump_close(dumper);
  }

  v5.receiver = self;
  v5.super_class = BloodhoundPacketDumper;
  [(BloodhoundPacketDumper *)&v5 dealloc];
}

@end