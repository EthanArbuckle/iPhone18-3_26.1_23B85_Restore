@interface MRAudioBuffer
- (MRAudioBuffer)initWithFormatSettings:(id)settings packetCapacity:(unint64_t)capacity maximumPacketSize:(unint64_t)size;
@end

@implementation MRAudioBuffer

- (MRAudioBuffer)initWithFormatSettings:(id)settings packetCapacity:(unint64_t)capacity maximumPacketSize:(unint64_t)size
{
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = MRAudioBuffer;
  v9 = [(MRAudioBuffer *)&v16 init];
  if (v9)
  {
    v10 = [settingsCopy copy];
    formatSettings = v9->_formatSettings;
    v9->_formatSettings = v10;

    v12 = [objc_alloc(MSVWeakLinkClass()) initWithSettings:settingsCopy];
    v13 = [objc_alloc(MSVWeakLinkClass()) initWithFormat:v12 packetCapacity:capacity maximumPacketSize:size];
    buffer = v9->_buffer;
    v9->_buffer = v13;
  }

  return v9;
}

@end