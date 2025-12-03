@interface INImage(_CDSpotlightRecorderAdditions)
- (id)cd_dataImage;
- (id)cd_encodedDataImage;
- (void)cd_dataImage;
- (void)cd_encodedDataImage;
@end

@implementation INImage(_CDSpotlightRecorderAdditions)

- (id)cd_dataImage
{
  if ([self _requiresRetrieval])
  {
    _uri = [self _uri];
    v3 = _uri;
    if (_uri && ([_uri isFileURL] & 1) == 0)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving populated intent images with remote URLs is not supported", buf, 2u);
      }

      selfCopy = 0;
    }

    else
    {
      slRESupergreenSuggestedImageDonationWidth();
      v5 = v4;
      mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
      v12 = 0;
      selfCopy = [mEMORY[0x1E696E878] loadDataImageFromImage:self scaledSize:&v12 error:{v5, v5}];
      v8 = v12;

      if (!selfCopy)
      {
        v9 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(INImage(_CDSpotlightRecorderAdditions) *)v8 cd_dataImage];
        }
      }
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)cd_encodedDataImage
{
  cd_dataImage = [self cd_dataImage];
  if (cd_dataImage)
  {
    v6 = 0;
    v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:cd_dataImage requiringSecureCoding:1 error:&v6];
    v3 = v6;
    if (!v2)
    {
      v4 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(INImage(_CDSpotlightRecorderAdditions) *)v3 cd_encodedDataImage];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)cd_dataImage
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error retrieving populated intent image: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cd_encodedDataImage
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error archiving intents image: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end