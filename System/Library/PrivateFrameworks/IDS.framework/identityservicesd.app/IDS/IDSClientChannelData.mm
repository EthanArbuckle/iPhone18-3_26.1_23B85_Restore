@interface IDSClientChannelData
- (IDSClientChannelData)initWithBytesBuffer:(char *)buffer bufferSize:(unsigned int)size metadata:(const char *)metadata metadataSize:(unsigned int)metadataSize;
- (IDSClientChannelData)initWithPacketBuffer:(id *)buffer metadata:(const char *)metadata metadataSize:(unsigned int)size;
- (void)dealloc;
@end

@implementation IDSClientChannelData

- (IDSClientChannelData)initWithBytesBuffer:(char *)buffer bufferSize:(unsigned int)size metadata:(const char *)metadata metadataSize:(unsigned int)metadataSize
{
  v17.receiver = self;
  v17.super_class = IDSClientChannelData;
  v10 = [(IDSClientChannelData *)&v17 init];
  if (v10)
  {
    if (buffer)
    {
      v11 = _IDSLinkPacketBufferCreate();
      v10->_packetBuffer = v11;
      memcpy(*v11, buffer, size);
      packetBuffer = v10->_packetBuffer;
      packetBuffer->var2 = size;
      memcpy(&packetBuffer->var0[size], metadata, metadataSize);
      bytes = &v10->_packetBuffer->var0[v10->_packetBuffer->var2];
    }

    else
    {
      v14 = [[NSData alloc] initWithBytes:metadata length:metadataSize];
      metadataData = v10->_metadataData;
      v10->_metadataData = v14;

      bytes = [(NSData *)v10->_metadataData bytes];
    }

    v10->_metadata = bytes;
    v10->_metadataSize = metadataSize;
  }

  return v10;
}

- (IDSClientChannelData)initWithPacketBuffer:(id *)buffer metadata:(const char *)metadata metadataSize:(unsigned int)size
{
  v16.receiver = self;
  v16.super_class = IDSClientChannelData;
  v8 = [(IDSClientChannelData *)&v16 init];
  if (v8)
  {
    if (buffer)
    {
      v9 = _IDSLinkPacketBufferCreate();
      v8->_packetBuffer = v9;
      memcpy(*v9, buffer->var0, buffer->var2);
      var2 = buffer->var2;
      packetBuffer = v8->_packetBuffer;
      packetBuffer->var2 = var2;
      memcpy(&packetBuffer->var0[var2], metadata, size);
      bytes = &v8->_packetBuffer->var0[v8->_packetBuffer->var2];
    }

    else
    {
      v13 = [[NSData alloc] initWithBytes:metadata length:size];
      metadataData = v8->_metadataData;
      v8->_metadataData = v13;

      bytes = [(NSData *)v8->_metadataData bytes];
    }

    v8->_metadata = bytes;
    v8->_metadataSize = size;
  }

  return v8;
}

- (void)dealloc
{
  _IDSLinkPacketBufferRelease();
  v3.receiver = self;
  v3.super_class = IDSClientChannelData;
  [(IDSClientChannelData *)&v3 dealloc];
}

@end