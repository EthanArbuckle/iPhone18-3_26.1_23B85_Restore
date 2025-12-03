@interface VCPMetaTrackDecoder
- (VCPMetaTrackDecoder)initWithTrack:(id)track;
- (void)dealloc;
@end

@implementation VCPMetaTrackDecoder

- (VCPMetaTrackDecoder)initWithTrack:(id)track
{
  trackCopy = track;
  v17.receiver = self;
  v17.super_class = VCPMetaTrackDecoder;
  v5 = [(VCPMetaTrackDecoder *)&v17 init];
  if (v5)
  {
    if (trackCopy)
    {
      v6 = objc_alloc(MEMORY[0x1E6987E78]);
      asset = [trackCopy asset];
      v8 = [v6 initWithAsset:asset error:0];
      reader = v5->_reader;
      v5->_reader = v8;

      v10 = v5->_reader;
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:trackCopy outputSettings:0];
      readerOutput = v5->_readerOutput;
      v5->_readerOutput = v11;

      if (v5->_readerOutput)
      {
        v13 = [MEMORY[0x1E6987E98] assetReaderOutputMetadataAdaptorWithAssetReaderTrackOutput:?];
        readerOutputAdaptor = v5->_readerOutputAdaptor;
        v5->_readerOutputAdaptor = v13;

        v10 = v5->_readerOutputAdaptor;
        if (v10)
        {
          if ([(AVAssetReader *)v5->_reader canAddOutput:v5->_readerOutput])
          {
            [(AVAssetReader *)v5->_reader addOutput:v5->_readerOutput];
            if ([(AVAssetReader *)v5->_reader startReading])
            {
              v10 = v5;
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_12;
          }

          goto LABEL_11;
        }

LABEL_12:
        v15 = v10;
        goto LABEL_13;
      }
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)dealloc
{
  reader = self->_reader;
  if (reader)
  {
    [(AVAssetReader *)reader cancelReading];
  }

  v4.receiver = self;
  v4.super_class = VCPMetaTrackDecoder;
  [(VCPMetaTrackDecoder *)&v4 dealloc];
}

@end