@interface UARPPacketDumper
- (UARPPacketDumper)initWithFileName:(id)a3;
- (void)dump:(id)a3 uuid:(id)a4 uarpStatus:(unsigned int)a5 direction:(unint64_t)a6;
@end

@implementation UARPPacketDumper

- (UARPPacketDumper)initWithFileName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UARPPacketDumper;
  v5 = [(UARPPacketDumper *)&v10 init];
  if (v5 && (v6 = [[BloodhoundPacketDumper alloc] initWithFileName:v4], bloodhoundDumper = v5->_bloodhoundDumper, v5->_bloodhoundDumper = v6, bloodhoundDumper, !v5->_bloodhoundDumper))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)dump:(id)a3 uuid:(id)a4 uarpStatus:(unsigned int)a5 direction:(unint64_t)a6
{
  v6 = a6;
  v14 = *MEMORY[0x277D85DE8];
  memset(&v13[3], 0, 15);
  v10 = a3;
  [a4 getUUIDBytes:{v13, 23}];
  *&v13[8] = a5;
  LOBYTE(v13[10]) = v6;
  [(BloodhoundPacketDumper *)self->_bloodhoundDumper dumpPacket:v10 type:3 metadata:&v12 metadataLength:23];

  v11 = *MEMORY[0x277D85DE8];
}

@end