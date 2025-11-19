@interface MRAudioBuffer
- (MRAudioBuffer)initWithFormatSettings:(id)a3 packetCapacity:(unint64_t)a4 maximumPacketSize:(unint64_t)a5;
@end

@implementation MRAudioBuffer

- (MRAudioBuffer)initWithFormatSettings:(id)a3 packetCapacity:(unint64_t)a4 maximumPacketSize:(unint64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = MRAudioBuffer;
  v9 = [(MRAudioBuffer *)&v16 init];
  if (v9)
  {
    v10 = [v8 copy];
    formatSettings = v9->_formatSettings;
    v9->_formatSettings = v10;

    v12 = [objc_alloc(MSVWeakLinkClass()) initWithSettings:v8];
    v13 = [objc_alloc(MSVWeakLinkClass()) initWithFormat:v12 packetCapacity:a4 maximumPacketSize:a5];
    buffer = v9->_buffer;
    v9->_buffer = v13;
  }

  return v9;
}

@end