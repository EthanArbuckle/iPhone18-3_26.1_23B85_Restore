@interface MRAudioDataBlock
- ($F24F406B2B787EFB06265DBA3D28CBD5)time;
- (MRAudioDataBlock)initWithData:(id)data;
- (MRAudioDataBlock)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (_MRAudioDataBlockProtobuf)protobuf;
- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_parseBuffer:(id)buffer;
- (void)_parseGain:(id)gain;
- (void)_parseTimestamp:(id)timestamp;
@end

@implementation MRAudioDataBlock

- (MRAudioDataBlock)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[_MRAudioDataBlockProtobuf alloc] initWithData:dataCopy];

  v6 = [(MRAudioDataBlock *)self initWithProtobuf:v5];
  return v6;
}

- (MRAudioDataBlock)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = MRAudioDataBlock;
  v5 = [(MRAudioDataBlock *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MRAudioDataBlock *)v5 _parseBuffer:protobufCopy];
    [(MRAudioDataBlock *)v6 _parseTimestamp:protobufCopy];
    [(MRAudioDataBlock *)v6 _parseGain:protobufCopy];
  }

  return v6;
}

- (_MRAudioDataBlockProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
  v4 = MEMORY[0x1E696AE40];
  formatSettings = [(MRAudioBuffer *)self->_buffer formatSettings];
  v6 = [v4 dataWithPropertyList:formatSettings format:200 options:0 error:0];
  [(_MRAudioFormatSettingsProtobuf *)v3 setFormatSettingsPlistData:v6];

  v7 = objc_alloc_init(_MRAudioBufferProtobuf);
  [(_MRAudioBufferProtobuf *)v7 setFormatSettings:v3];
  buffer = [(MRAudioBuffer *)self->_buffer buffer];
  -[_MRAudioBufferProtobuf setPacketCapacity:](v7, "setPacketCapacity:", [buffer packetCapacity]);

  buffer2 = [(MRAudioBuffer *)self->_buffer buffer];
  -[_MRAudioBufferProtobuf setMaximumPacketSize:](v7, "setMaximumPacketSize:", [buffer2 maximumPacketSize]);

  buffer3 = [(MRAudioBuffer *)self->_buffer buffer];
  -[_MRAudioBufferProtobuf setPacketCount:](v7, "setPacketCount:", [buffer3 packetCount]);

  v11 = MEMORY[0x1E695DEF0];
  buffer4 = [(MRAudioBuffer *)self->_buffer buffer];
  data = [buffer4 data];
  buffer5 = [(MRAudioBuffer *)self->_buffer buffer];
  packetCapacity = [buffer5 packetCapacity];
  buffer6 = [(MRAudioBuffer *)self->_buffer buffer];
  v17 = [v11 dataWithBytes:data length:{objc_msgSend(buffer6, "maximumPacketSize") * packetCapacity}];
  [(_MRAudioBufferProtobuf *)v7 setContents:v17];

  buffer7 = [(MRAudioBuffer *)self->_buffer buffer];
  LODWORD(v17) = [buffer7 packetCapacity];

  if (v17)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      buffer8 = [(MRAudioBuffer *)self->_buffer buffer];
      packetDescriptions = [buffer8 packetDescriptions];
      v23 = *(packetDescriptions + v19);
      v24 = *(packetDescriptions + v19 + 8);
      v25 = *(packetDescriptions + v19 + 12);

      v26 = objc_alloc_init(_MRAudioStreamPacketDescriptionProtobuf);
      [(_MRAudioStreamPacketDescriptionProtobuf *)v26 setStartOffset:v23];
      [(_MRAudioStreamPacketDescriptionProtobuf *)v26 setVariableFramesInPacket:v24];
      [(_MRAudioStreamPacketDescriptionProtobuf *)v26 setDataByteSize:v25];
      [(_MRAudioBufferProtobuf *)v7 addPacketDescriptions:v26];

      ++v20;
      buffer9 = [(MRAudioBuffer *)self->_buffer buffer];
      LODWORD(v23) = [buffer9 packetCapacity];

      v19 += 16;
    }

    while (v20 < v23);
  }

  v28 = objc_alloc_init(_MRAudioTimeProtobuf);
  [(_MRAudioTimeProtobuf *)v28 setTimestamp:self->_time.timestamp];
  [(_MRAudioTimeProtobuf *)v28 setSampleRate:self->_time.sampleRate];
  v29 = objc_alloc_init(_MRAudioDataBlockProtobuf);
  [(_MRAudioDataBlockProtobuf *)v29 setBuffer:v7];
  [(_MRAudioDataBlockProtobuf *)v29 setTime:v28];
  [(_MRAudioDataBlockProtobuf *)v29 setGain:self->_gain];

  return v29;
}

- (NSData)data
{
  protobuf = [(MRAudioDataBlock *)self protobuf];
  data = [protobuf data];

  return data;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRAudioDataBlock *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRAudioDataBlock *)self _copyWithZone:zone usingConcreteClass:v5];
}

- (id)_copyWithZone:(_NSZone *)zone usingConcreteClass:(Class)class
{
  v5 = objc_alloc_init(class);
  objc_storeStrong(v5 + 1, self->_buffer);
  *(v5 + 1) = self->_time;
  *(v5 + 8) = LODWORD(self->_gain);
  return v5;
}

- (void)_parseBuffer:(id)buffer
{
  bufferCopy = buffer;
  p_buffer = &self->_buffer;
  buffer = self->_buffer;
  if (buffer)
  {
    *p_buffer = 0;
  }

  buffer = [bufferCopy buffer];
  v7 = MEMORY[0x1E696AE40];
  formatSettings = [buffer formatSettings];
  formatSettingsPlistData = [formatSettings formatSettingsPlistData];
  v10 = [v7 propertyListWithData:formatSettingsPlistData options:0 format:0 error:0];

  v11 = -[MRAudioBuffer initWithFormatSettings:packetCapacity:maximumPacketSize:]([MRAudioBuffer alloc], "initWithFormatSettings:packetCapacity:maximumPacketSize:", v10, [buffer packetCapacity], objc_msgSend(buffer, "maximumPacketSize"));
  v12 = *p_buffer;
  *p_buffer = v11;

  contents = [buffer contents];
  v14 = [contents length];
  packetCapacity = [buffer packetCapacity];
  if (v14 > [buffer maximumPacketSize] * packetCapacity)
  {
    [MRAudioDataBlock _parseBuffer:];
  }

  buffer2 = [*p_buffer buffer];
  packetCapacity2 = [buffer2 packetCapacity];
  packetDescriptionsCount = [buffer packetDescriptionsCount];

  if (packetDescriptionsCount < packetCapacity2)
  {
    [MRAudioDataBlock _parseBuffer:];
  }

  buffer3 = [*p_buffer buffer];
  memcpy([buffer3 data], objc_msgSend(contents, "bytes"), objc_msgSend(contents, "length"));

  packetCount = [buffer packetCount];
  buffer4 = [*p_buffer buffer];
  [buffer4 setPacketCount:packetCount];

  if ([buffer packetDescriptionsCount])
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = [buffer packetDescriptionsAtIndex:v22];
      buffer5 = [*p_buffer buffer];
      v26 = [buffer5 packetDescriptions] + 16 * v22;

      *(v26 + 12) = [v24 dataByteSize];
      *v26 = [v24 startOffset];
      *(v26 + 8) = [v24 variableFramesInPacket];

      v22 = v23;
    }

    while ([buffer packetDescriptionsCount] > v23++);
  }
}

- (void)_parseTimestamp:(id)timestamp
{
  time = [timestamp time];
  [time timestamp];
  self->_time.timestamp = v4;
  [time sampleRate];
  self->_time.sampleRate = v5;
}

- (void)_parseGain:(id)gain
{
  [gain gain];
  *&v4 = v4;
  self->_gain = *&v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)time
{
  timestamp = self->_time.timestamp;
  sampleRate = self->_time.sampleRate;
  result.var1 = sampleRate;
  result.var0 = timestamp;
  return result;
}

- (void)_parseBuffer:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v1 object:v0 file:@"MRAudioDataBlock.m" lineNumber:120 description:{@"invalid buffer size for decoding voice input message (%lu > (%lu * %lu))", objc_msgSend(v3, "length"), objc_msgSend(v2, "packetCapacity"), objc_msgSend(v2, "maximumPacketSize")}];
}

- (void)_parseBuffer:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [*v3 buffer];
  [v5 handleFailureInMethod:v1 object:v0 file:@"MRAudioDataBlock.m" lineNumber:123 description:{@"packet descriptions exceed maximum packet capacity (%lu > %lu)", objc_msgSend(v4, "packetCapacity"), objc_msgSend(v2, "packetDescriptionsCount")}];
}

@end