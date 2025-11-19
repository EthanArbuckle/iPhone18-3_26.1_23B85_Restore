@interface _BlastDoorLPVideo
- (BOOL)isEqual:(id)a3;
- (_BlastDoorLPVideo)init;
- (_BlastDoorLPVideo)initWithCoder:(id)a3;
- (id)_initWithVideo:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFileURL:(id)a3;
@end

@implementation _BlastDoorLPVideo

- (_BlastDoorLPVideo)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = _BlastDoorLPVideo;
  result = [(_BlastDoorLPVideo *)&v4 init];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithVideo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _BlastDoorLPVideo;
  v5 = [(_BlastDoorLPVideo *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_streamingURL, v4[2]);
    objc_storeStrong(&v6->_youTubeURL, v4[3]);
    v7 = [v4[4] copy];
    data = v6->_data;
    v6->_data = v7;

    v9 = [v4[5] copy];
    MIMEType = v6->_MIMEType;
    v6->_MIMEType = v9;

    objc_storeStrong(&v6->_fileURL, v4[6]);
    v11 = [v4[7] copy];
    properties = v6->_properties;
    v6->_properties = v11;

    v13 = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (_BlastDoorLPVideo)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _BlastDoorLPVideo;
  v5 = [(_BlastDoorLPVideo *)&v20 init];
  if (v5)
  {
    v6 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"streamingURL"];
    streamingURL = v5->_streamingURL;
    v5->_streamingURL = v6;

    v8 = [v4 _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"youTubeURL"];
    youTubeURL = v5->_youTubeURL;
    v5->_youTubeURL = v8;

    v10 = [v4 _bd_lp_strictlyDecodeNSDataForKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 _bd_lp_strictlyDecodeNSStringForKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v12;

    v14 = objc_alloc_init(_BlastDoorLPVideoProperties);
    properties = v5->_properties;
    v5->_properties = v14;

    -[_BlastDoorLPVideoProperties setHasAudio:](v5->_properties, "setHasAudio:", [v4 decodeBoolForKey:@"hasAudio"]);
    v16 = [v4 _bd_lp_strictlyDecodeNSStringForKey:@"accessibilityText"];
    [(_BlastDoorLPVideoProperties *)v5->_properties setAccessibilityText:v16];

    v17 = v5;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_streamingURL forKey:@"streamingURL"];
  [v6 _bd_lp_encodeURLIfNotNilOrLocalFile:self->_youTubeURL forKey:@"youTubeURL"];
  if ([(_BlastDoorLPVideo *)self _shouldEncodeData])
  {
    v4 = [(_BlastDoorLPVideo *)self data];
    [v6 _bd_lp_encodeObjectIfNotNil:v4 forKey:@"data"];
  }

  [v6 _bd_lp_encodeObjectIfNotNil:self->_MIMEType forKey:@"MIMEType"];
  [v6 encodeBool:-[_BlastDoorLPVideoProperties hasAudio](self->_properties forKey:{"hasAudio"), @"hasAudio"}];
  v5 = [(_BlastDoorLPVideoProperties *)self->_properties accessibilityText];
  [v6 _bd_lp_encodeObjectIfNotNil:v5 forKey:@"accessibilityText"];
}

- (BOOL)isEqual:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _BlastDoorLPVideo;
  if ([(_BlastDoorLPVideo *)&v15 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = v6[2];
      if (v7 | self->_streamingURL && ![v7 isEqual:?] || (v8 = v6[3], v8 | self->_youTubeURL) && !objc_msgSend(v8, "isEqual:") || (v9 = v6[4], v9 | self->_data) && !objc_msgSend(v9, "isEqual:") || (v10 = v6[5], v10 | self->_MIMEType) && !objc_msgSend(v10, "isEqual:") || (v11 = v6[6], v11 | self->_fileURL) && !objc_msgSend(v11, "isEqual:"))
      {
        v5 = 0;
      }

      else
      {
        v12 = v6[7];
        if (v12 | self->_properties)
        {
          v5 = [v12 isEqual:?];
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

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setFileURL:(id)a3
{
  v4 = a3;
  if (self->_data)
  {
    [_BlastDoorLPVideo setFileURL:];
  }

  v7 = v4;
  if ([v4 isFileURL])
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  fileURL = self->_fileURL;
  self->_fileURL = v5;
}

@end