@interface MRAudioDataBlock
- ($F24F406B2B787EFB06265DBA3D28CBD5)time;
- (MRAudioDataBlock)initWithData:(id)a3;
- (MRAudioDataBlock)initWithProtobuf:(id)a3;
- (NSData)data;
- (_MRAudioDataBlockProtobuf)protobuf;
- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_parseBuffer:(id)a3;
- (void)_parseGain:(id)a3;
- (void)_parseTimestamp:(id)a3;
@end

@implementation MRAudioDataBlock

- (MRAudioDataBlock)initWithData:(id)a3
{
  v4 = a3;
  v5 = [[_MRAudioDataBlockProtobuf alloc] initWithData:v4];

  v6 = [(MRAudioDataBlock *)self initWithProtobuf:v5];
  return v6;
}

- (MRAudioDataBlock)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRAudioDataBlock;
  v5 = [(MRAudioDataBlock *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MRAudioDataBlock *)v5 _parseBuffer:v4];
    [(MRAudioDataBlock *)v6 _parseTimestamp:v4];
    [(MRAudioDataBlock *)v6 _parseGain:v4];
  }

  return v6;
}

- (_MRAudioDataBlockProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
  v4 = MEMORY[0x1E696AE40];
  v5 = [(MRAudioBuffer *)self->_buffer formatSettings];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:0];
  [(_MRAudioFormatSettingsProtobuf *)v3 setFormatSettingsPlistData:v6];

  v7 = objc_alloc_init(_MRAudioBufferProtobuf);
  [(_MRAudioBufferProtobuf *)v7 setFormatSettings:v3];
  v8 = [(MRAudioBuffer *)self->_buffer buffer];
  -[_MRAudioBufferProtobuf setPacketCapacity:](v7, "setPacketCapacity:", [v8 packetCapacity]);

  v9 = [(MRAudioBuffer *)self->_buffer buffer];
  -[_MRAudioBufferProtobuf setMaximumPacketSize:](v7, "setMaximumPacketSize:", [v9 maximumPacketSize]);

  v10 = [(MRAudioBuffer *)self->_buffer buffer];
  -[_MRAudioBufferProtobuf setPacketCount:](v7, "setPacketCount:", [v10 packetCount]);

  v11 = MEMORY[0x1E695DEF0];
  v12 = [(MRAudioBuffer *)self->_buffer buffer];
  v13 = [v12 data];
  v14 = [(MRAudioBuffer *)self->_buffer buffer];
  v15 = [v14 packetCapacity];
  v16 = [(MRAudioBuffer *)self->_buffer buffer];
  v17 = [v11 dataWithBytes:v13 length:{objc_msgSend(v16, "maximumPacketSize") * v15}];
  [(_MRAudioBufferProtobuf *)v7 setContents:v17];

  v18 = [(MRAudioBuffer *)self->_buffer buffer];
  LODWORD(v17) = [v18 packetCapacity];

  if (v17)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = [(MRAudioBuffer *)self->_buffer buffer];
      v22 = [v21 packetDescriptions];
      v23 = *(v22 + v19);
      v24 = *(v22 + v19 + 8);
      v25 = *(v22 + v19 + 12);

      v26 = objc_alloc_init(_MRAudioStreamPacketDescriptionProtobuf);
      [(_MRAudioStreamPacketDescriptionProtobuf *)v26 setStartOffset:v23];
      [(_MRAudioStreamPacketDescriptionProtobuf *)v26 setVariableFramesInPacket:v24];
      [(_MRAudioStreamPacketDescriptionProtobuf *)v26 setDataByteSize:v25];
      [(_MRAudioBufferProtobuf *)v7 addPacketDescriptions:v26];

      ++v20;
      v27 = [(MRAudioBuffer *)self->_buffer buffer];
      LODWORD(v23) = [v27 packetCapacity];

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
  v2 = [(MRAudioDataBlock *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRAudioDataBlock *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRAudioDataBlock *)self _copyWithZone:a3 usingConcreteClass:v5];
}

- (id)_copyWithZone:(_NSZone *)a3 usingConcreteClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  objc_storeStrong(v5 + 1, self->_buffer);
  *(v5 + 1) = self->_time;
  *(v5 + 8) = LODWORD(self->_gain);
  return v5;
}

- (void)_parseBuffer:(id)a3
{
  v28 = a3;
  p_buffer = &self->_buffer;
  buffer = self->_buffer;
  if (buffer)
  {
    *p_buffer = 0;
  }

  v6 = [v28 buffer];
  v7 = MEMORY[0x1E696AE40];
  v8 = [v6 formatSettings];
  v9 = [v8 formatSettingsPlistData];
  v10 = [v7 propertyListWithData:v9 options:0 format:0 error:0];

  v11 = -[MRAudioBuffer initWithFormatSettings:packetCapacity:maximumPacketSize:]([MRAudioBuffer alloc], "initWithFormatSettings:packetCapacity:maximumPacketSize:", v10, [v6 packetCapacity], objc_msgSend(v6, "maximumPacketSize"));
  v12 = *p_buffer;
  *p_buffer = v11;

  v13 = [v6 contents];
  v14 = [v13 length];
  v15 = [v6 packetCapacity];
  if (v14 > [v6 maximumPacketSize] * v15)
  {
    [MRAudioDataBlock _parseBuffer:];
  }

  v16 = [*p_buffer buffer];
  v17 = [v16 packetCapacity];
  v18 = [v6 packetDescriptionsCount];

  if (v18 < v17)
  {
    [MRAudioDataBlock _parseBuffer:];
  }

  v19 = [*p_buffer buffer];
  memcpy([v19 data], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"));

  v20 = [v6 packetCount];
  v21 = [*p_buffer buffer];
  [v21 setPacketCount:v20];

  if ([v6 packetDescriptionsCount])
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = [v6 packetDescriptionsAtIndex:v22];
      v25 = [*p_buffer buffer];
      v26 = [v25 packetDescriptions] + 16 * v22;

      *(v26 + 12) = [v24 dataByteSize];
      *v26 = [v24 startOffset];
      *(v26 + 8) = [v24 variableFramesInPacket];

      v22 = v23;
    }

    while ([v6 packetDescriptionsCount] > v23++);
  }
}

- (void)_parseTimestamp:(id)a3
{
  v6 = [a3 time];
  [v6 timestamp];
  self->_time.timestamp = v4;
  [v6 sampleRate];
  self->_time.sampleRate = v5;
}

- (void)_parseGain:(id)a3
{
  [a3 gain];
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