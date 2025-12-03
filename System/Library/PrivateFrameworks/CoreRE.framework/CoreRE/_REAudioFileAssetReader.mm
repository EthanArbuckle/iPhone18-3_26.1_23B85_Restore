@interface _REAudioFileAssetReader
- (_REAudioFileAssetReader)initWithStream:(SeekableInputStream *)stream ownsStream:(BOOL)ownsStream;
- (id).cxx_construct;
- (id)getBackingData;
@end

@implementation _REAudioFileAssetReader

- (_REAudioFileAssetReader)initWithStream:(SeekableInputStream *)stream ownsStream:(BOOL)ownsStream
{
  v9.receiver = self;
  v9.super_class = _REAudioFileAssetReader;
  v6 = [(_REAudioFileAssetReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    re::audio::AudioFileAssetReader::init(&v6->_reader, stream, ownsStream);
  }

  return v7;
}

- (id)getBackingData
{
  seekableStream = self->_reader.seekableStream;
  if (seekableStream)
  {
    backingData = self->_reader.backingData;
    if (backingData)
    {
LABEL_5:
      seekableStream = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*(backingData + 1) length:*(backingData + 2) freeWhenDone:0];
      goto LABEL_6;
    }

    v5 = (*(*seekableStream + 56))(seekableStream, 0);
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 72, 8);
    v8 = self->_reader.seekableStream;
    *(v7 + 64) = 0;
    *(v7 + 56) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 32) = 0;
    *(v7 + 24) = 0;
    *v7 = v8;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    self->_reader.backingData = v7;
    if (re::SeekableInputStreamBufferedReader::readNext(v7, 0xFFFFFFFFFFFFFFFFLL))
    {
      backingData = self->_reader.backingData;
      goto LABEL_5;
    }

    seekableStream = 0;
  }

LABEL_6:

  return seekableStream;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  return self;
}

@end