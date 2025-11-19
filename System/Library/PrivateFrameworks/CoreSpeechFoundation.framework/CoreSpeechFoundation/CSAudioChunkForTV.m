@interface CSAudioChunkForTV
- (CSAudioChunkForTV)initWithXPCObject:(id)a3;
- (id)xpcObject;
@end

@implementation CSAudioChunkForTV

- (id)xpcObject
{
  keys[7] = *MEMORY[0x1E69E9840];
  keys[0] = "packets";
  keys[1] = "avgPower";
  keys[2] = "peakPower";
  keys[3] = "timeStamp";
  keys[4] = "numChannels";
  keys[5] = "audioFormat";
  keys[6] = "streamHandleID";
  values[0] = [(NSArray *)self->_packets _cs_xpcObject];
  values[1] = xpc_double_create(self->_avgPower);
  values[2] = xpc_double_create(self->_peakPower);
  values[3] = xpc_uint64_create(self->_timeStamp);
  values[4] = xpc_uint64_create(self->_numChannels);
  values[5] = xpc_uint64_create(self->_audioFormat);
  values[6] = xpc_uint64_create(self->_streamHandleID);
  v3 = xpc_dictionary_create(keys, values, 7uLL);
  for (i = 6; i != -1; --i)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CSAudioChunkForTV)initWithXPCObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CSAudioChunkForTV;
  v5 = [(CSAudioChunkForTV *)&v15 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_double(v4, "avgPower");
    v5->_avgPower = v6;
    v7 = xpc_dictionary_get_double(v4, "peakPower");
    v5->_peakPower = v7;
    v5->_timeStamp = xpc_dictionary_get_uint64(v4, "timeStamp");
    v5->_numChannels = xpc_dictionary_get_uint64(v4, "numChannels");
    v5->_audioFormat = xpc_dictionary_get_uint64(v4, "audioFormat");
    v5->_streamHandleID = xpc_dictionary_get_uint64(v4, "streamHandleID");
    v8 = xpc_dictionary_get_array(v4, "packets");
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E695DEC8]);
      v10 = [v9 _cs_initWithXPCObject:v8];
      packets = v5->_packets;
      v5->_packets = v10;
    }

    else
    {
      v12 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v17 = "[CSAudioChunkForTV initWithXPCObject:]";
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s invalid packets", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end