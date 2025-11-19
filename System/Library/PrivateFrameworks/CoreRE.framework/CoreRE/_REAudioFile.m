@interface _REAudioFile
+ (id)audioFileWithData:(id)a3;
+ (id)audioFileWithStream:(SeekableInputStream *)a3 ownsStream:(BOOL)a4;
- (id)processingFormat;
@end

@implementation _REAudioFile

+ (id)audioFileWithStream:(SeekableInputStream *)a3 ownsStream:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [[_REAudioFileAssetReader alloc] initWithStream:a3 ownsStream:a4];
  v5 = [(_REAudioFileAssetReader *)v4 reader];
  if (re::audio::AudioFileAssetReader::createExtAudioFile(v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = [_REAudioFile alloc];
    v8 = *(v5 + 32);
    v14 = 0;
    v6 = [(_REAudioFile *)v7 initForReadingFromExtAudioFile:v8 error:&v14];
    v9 = v14;
    v10 = v9;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v12 = *re::audioLogObjects(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to create AVAudioFile from ExtAudioFile: %@", buf, 0xCu);
      }
    }
  }

  [v6 setReader:v4];

  return v6;
}

+ (id)audioFileWithData:(id)a3
{
  v4 = a3;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 112, 8);
  v7 = v4;
  v10 = v7;
  re::DataSeekableInputStream::DataSeekableInputStream(v6, &v10, 0, 0);
  v8 = [a1 audioFileWithStream:v6 ownsStream:1];

  return v8;
}

- (id)processingFormat
{
  v2 = [(_REAudioFileAssetReader *)self->_reader reader][48];

  return v2;
}

@end