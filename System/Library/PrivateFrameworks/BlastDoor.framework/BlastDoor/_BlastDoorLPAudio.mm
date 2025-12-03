@interface _BlastDoorLPAudio
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPAudio)init;
- (_BlastDoorLPAudio)initWithCoder:(id)coder;
- (_BlastDoorLPAudioProperties)properties;
- (id)_initWithAudio:(id)audio;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPAudio

- (_BlastDoorLPAudio)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = _BlastDoorLPAudio;
  result = [(_BlastDoorLPAudio *)&v4 init];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithAudio:(id)audio
{
  v17 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPAudio;
  v5 = [(_BlastDoorLPAudio *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_streamingURL, audioCopy[3]);
    v7 = [audioCopy[1] copy];
    data = v6->_data;
    v6->_data = v7;

    v9 = [audioCopy[2] copy];
    MIMEType = v6->_MIMEType;
    v6->_MIMEType = v9;

    v11 = [audioCopy[4] copy];
    properties = v6->_properties;
    v6->_properties = v11;

    v13 = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (_BlastDoorLPAudio)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _BlastDoorLPAudio;
  v5 = [(_BlastDoorLPAudio *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"streamingURL"];
    streamingURL = v5->_streamingURL;
    v5->_streamingURL = v6;

    v8 = [coderCopy _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v10;

    v12 = objc_alloc_init(_BlastDoorLPAudioProperties);
    properties = v5->_properties;
    v5->_properties = v12;

    v14 = [coderCopy _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPAudioProperties *)v5->_properties setAccessibilityText:v14];

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_streamingURL forKey:@"streamingURL"];
  if ([(_BlastDoorLPAudio *)self _shouldEncodeData])
  {
    data = [(_BlastDoorLPAudio *)self data];
    [coderCopy _bd_lp_encodeObjectIfNotNil:data forKey:@"data"];
  }

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  accessibilityText = [(_BlastDoorLPAudioProperties *)self->_properties accessibilityText];
  [coderCopy _bd_lp_encodeObjectIfNotNil:accessibilityText forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)equal
{
  v14 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPAudio;
  if ([(_BlastDoorLPAudio *)&v13 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6[3];
      if (v7 | self->_streamingURL && ![v7 isEqual:?] || (v8 = v6[1], v8 | self->_data) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[2], v9 | self->_MIMEType) && !objc_msgSend(v9, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v10 = v6[4];
        if (v10 | self->_properties)
        {
          v5 = [v10 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (_BlastDoorLPAudioProperties)properties
{
  v2 = [(_BlastDoorLPAudioProperties *)self->_properties copy];

  return v2;
}

@end