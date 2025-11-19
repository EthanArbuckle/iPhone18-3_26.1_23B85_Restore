@interface _DT_GCDAsyncSpecialPacket
- (_DT_GCDAsyncSpecialPacket)initWithTLSSettings:(id)a3;
@end

@implementation _DT_GCDAsyncSpecialPacket

- (_DT_GCDAsyncSpecialPacket)initWithTLSSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DT_GCDAsyncSpecialPacket;
  v5 = [(_DT_GCDAsyncSpecialPacket *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    tlsSettings = v5->tlsSettings;
    v5->tlsSettings = v6;
  }

  return v5;
}

@end