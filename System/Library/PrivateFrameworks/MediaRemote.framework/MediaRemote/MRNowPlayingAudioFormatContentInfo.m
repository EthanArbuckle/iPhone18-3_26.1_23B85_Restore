@interface MRNowPlayingAudioFormatContentInfo
- (BOOL)isEqual:(id)a3;
- (MRNowPlayingAudioFormatContentInfo)initWithData:(id)a3;
- (MRNowPlayingAudioFormatContentInfo)initWithPid:(int)a3 bundleID:(id)a4 audioSessionID:(id)a5 audioFormat:(id)a6 channelCount:(id)a7 bestAvailableContent:(id)a8 isEligibleForSpatialization:(id)a9 isSpatialized:(id)a10;
- (MRNowPlayingAudioFormatContentInfo)initWithProtobuf:(id)a3;
- (NSData)data;
- (NSString)audioFormatDescription;
- (NSString)bestAvailableAudioFormatDescription;
- (NSString)bundleID;
- (_MRMRNowPlayingAudioFormatContentInfoProtobuf)protobuf;
- (id)description;
- (int64_t)bestAvailableAudioFormat;
- (void)bestAvailableAudioFormat;
@end

@implementation MRNowPlayingAudioFormatContentInfo

- (NSString)bundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    pid = self->_pid;
    v5 = BSBundleIDForPID();
    v6 = self->_bundleID;
    self->_bundleID = v5;

    bundleID = self->_bundleID;
  }

  return bundleID;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  audioSessionID = self->_audioSessionID;
  v6 = [(MRNowPlayingAudioFormatContentInfo *)self audioFormatDescription];
  v7 = v6;
  v8 = @"No";
  if (self->_eligibleForSpatialization)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  if (self->_spatialized)
  {
    v8 = @"Yes";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p | session id: %@ | audio format: %@ - %@ | channel #: %@ | available: %@ | eligible: %@ | active: %@ | intended :%ld | resolved :%ld | pid: %i | bundleID: %@>", v4, self, audioSessionID, v6, *&self->_audioFormat, self->_bestAvailableContent, v9, v8, self->_intendedSpatialExperience, self->_resolvedSpatialExperience, self->_pid, self->_bundleID];

  return v10;
}

- (NSString)audioFormatDescription
{
  v10 = 0;
  inSpecifier = 0u;
  v9 = 0u;
  DWORD2(inSpecifier) = [(NSNumber *)self->_audioFormat unsignedIntValue];
  HIDWORD(v9) = [(NSNumber *)self->_channelCount unsignedIntValue];
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x6166636Eu, 0x28u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
  v4 = 0;
  if (!Property)
  {
    v4 = [outPropertyData copy];
  }

  return v4;
}

- (NSString)bestAvailableAudioFormatDescription
{
  v3 = [(MRNowPlayingAudioFormatContentInfo *)self bestAvailableAudioFormat];
  if (v3 == 1)
  {
    v4 = @"MULTICHANNEL_AVAILABLE";
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = @"SPATIAL_ATMOS_AVAILABLE";
LABEL_5:
    v5 = MRLocalizedString(v4);
    goto LABEL_7;
  }

  v5 = [(MRNowPlayingAudioFormatContentInfo *)self audioFormatDescription];
LABEL_7:

  return v5;
}

- (int64_t)bestAvailableAudioFormat
{
  bestAvailableContent = self->_bestAvailableContent;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getkMXSession_SourceFormatInfoKey_BestAvailableContentType_MultichannelSymbolLoc_ptr;
  v13 = getkMXSession_SourceFormatInfoKey_BestAvailableContentType_MultichannelSymbolLoc_ptr;
  if (!getkMXSession_SourceFormatInfoKey_BestAvailableContentType_MultichannelSymbolLoc_ptr)
  {
    v5 = MediaExperienceLibrary_0();
    v11[3] = dlsym(v5, "kMXSession_SourceFormatInfoKey_BestAvailableContentType_Multichannel");
    getkMXSession_SourceFormatInfoKey_BestAvailableContentType_MultichannelSymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    [MRNowPlayingAudioFormatContentInfo bestAvailableAudioFormat];
  }

  if ([(NSString *)bestAvailableContent isEqualToString:*v4])
  {
    return 1;
  }

  v7 = self->_bestAvailableContent;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v8 = getkMXSession_SourceFormatInfoKey_BestAvailableContentType_AtmosSymbolLoc_ptr;
  v13 = getkMXSession_SourceFormatInfoKey_BestAvailableContentType_AtmosSymbolLoc_ptr;
  if (!getkMXSession_SourceFormatInfoKey_BestAvailableContentType_AtmosSymbolLoc_ptr)
  {
    v9 = MediaExperienceLibrary_0();
    v11[3] = dlsym(v9, "kMXSession_SourceFormatInfoKey_BestAvailableContentType_Atmos");
    getkMXSession_SourceFormatInfoKey_BestAvailableContentType_AtmosSymbolLoc_ptr = v11[3];
    v8 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v8)
  {
    [MRNowPlayingAudioFormatContentInfo bestAvailableAudioFormat];
  }

  if ([(NSString *)v7 isEqualToString:*v8])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSData)data
{
  v2 = [(MRNowPlayingAudioFormatContentInfo *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRMRNowPlayingAudioFormatContentInfoProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRMRNowPlayingAudioFormatContentInfoProtobuf);
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setBundleID:self->_bundleID];
  audioSessionID = self->_audioSessionID;
  if (audioSessionID)
  {
    [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setAudioSessionID:[(NSNumber *)audioSessionID unsignedIntValue]];
  }

  audioFormat = self->_audioFormat;
  if (audioFormat)
  {
    [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setAudioFormat:[(NSNumber *)audioFormat unsignedIntValue]];
  }

  channelCount = self->_channelCount;
  if (channelCount)
  {
    [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setChannelCount:[(NSNumber *)channelCount unsignedIntValue]];
  }

  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setBestAvailableContent:self->_bestAvailableContent];
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setEligibleForSpatialization:self->_eligibleForSpatialization];
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setSpatialized:self->_spatialized];
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setIntendedSpatialExperience:self->_intendedSpatialExperience];
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setResolvedSpatialExperience:self->_resolvedSpatialExperience];
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setPid:self->_pid];
  [(_MRMRNowPlayingAudioFormatContentInfoProtobuf *)v3 setRenderingMode:self->_renderingMode];

  return v3;
}

- (MRNowPlayingAudioFormatContentInfo)initWithPid:(int)a3 bundleID:(id)a4 audioSessionID:(id)a5 audioFormat:(id)a6 channelCount:(id)a7 bestAvailableContent:(id)a8 isEligibleForSpatialization:(id)a9 isSpatialized:(id)a10
{
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = MRNowPlayingAudioFormatContentInfo;
  v20 = [(MRNowPlayingAudioFormatContentInfo *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_pid = a3;
    objc_storeStrong(&v20->_bundleID, a4);
    objc_storeStrong(&v21->_audioSessionID, a5);
    objc_storeStrong(&v21->_audioFormat, a6);
    objc_storeStrong(&v21->_channelCount, a7);
    objc_storeStrong(&v21->_bestAvailableContent, a8);
    v21->_spatialized = [v19 BOOLValue];
    v21->_eligibleForSpatialization = [v18 BOOLValue];
  }

  return v21;
}

- (MRNowPlayingAudioFormatContentInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18.receiver = self;
    v18.super_class = MRNowPlayingAudioFormatContentInfo;
    v5 = [(MRNowPlayingAudioFormatContentInfo *)&v18 init];
    if (v5)
    {
      v6 = [v4 bundleID];
      bundleID = v5->_bundleID;
      v5->_bundleID = v6;

      if ([v4 hasAudioSessionID])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "audioSessionID")}];
        audioSessionID = v5->_audioSessionID;
        v5->_audioSessionID = v8;
      }

      if ([v4 hasAudioFormat])
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "audioFormat")}];
        audioFormat = v5->_audioFormat;
        v5->_audioFormat = v10;
      }

      if ([v4 hasChannelCount])
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "channelCount")}];
        channelCount = v5->_channelCount;
        v5->_channelCount = v12;
      }

      v14 = [v4 bestAvailableContent];
      bestAvailableContent = v5->_bestAvailableContent;
      v5->_bestAvailableContent = v14;

      v5->_eligibleForSpatialization = [v4 eligibleForSpatialization];
      v5->_spatialized = [v4 spatialized];
      v5->_intendedSpatialExperience = [v4 intendedSpatialExperience];
      v5->_resolvedSpatialExperience = [v4 resolvedSpatialExperience];
      v5->_pid = [v4 pid];
      v5->_renderingMode = [v4 renderingMode];
    }

    self = v5;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (MRNowPlayingAudioFormatContentInfo)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRMRNowPlayingAudioFormatContentInfoProtobuf alloc] initWithData:v4];

    self = [(MRNowPlayingAudioFormatContentInfo *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRNowPlayingAudioFormatContentInfo *)v5 pid];
      pid = self->_pid;
      v8 = [(MRNowPlayingAudioFormatContentInfo *)v5 bundleID];
      v9 = [v8 isEqualToString:self->_bundleID];
      if (v6 == pid)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = [(MRNowPlayingAudioFormatContentInfo *)v5 audioSessionID];
      v12 = [v11 unsignedIntValue];
      if (v12 != [(NSNumber *)self->_audioSessionID unsignedIntValue])
      {
        v10 = 0;
      }

      v13 = [(MRNowPlayingAudioFormatContentInfo *)v5 audioFormat];
      v14 = [v13 unsignedIntValue];
      if (v14 != [(NSNumber *)self->_audioFormat unsignedIntValue])
      {
        v10 = 0;
      }

      v15 = [(MRNowPlayingAudioFormatContentInfo *)v5 channelCount];
      v16 = [v15 unsignedIntValue];
      if (v16 == [(NSNumber *)self->_channelCount unsignedIntValue])
      {
        v17 = v10;
      }

      else
      {
        v17 = 0;
      }

      v18 = [(MRNowPlayingAudioFormatContentInfo *)v5 bestAvailableContent];
      v19 = v17 & [v18 isEqualToString:self->_bestAvailableContent];

      if (self->_eligibleForSpatialization == [(MRNowPlayingAudioFormatContentInfo *)v5 isEligibleForSpatialization])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (self->_spatialized != [(MRNowPlayingAudioFormatContentInfo *)v5 isSpatialized])
      {
        v20 = 0;
      }

      if ([(MRNowPlayingAudioFormatContentInfo *)v5 intendedSpatialExperience]!= self->_intendedSpatialExperience)
      {
        v20 = 0;
      }

      v21 = [(MRNowPlayingAudioFormatContentInfo *)v5 resolvedSpatialExperience]== self->_resolvedSpatialExperience && v20;
      v22 = [(MRNowPlayingAudioFormatContentInfo *)v5 renderingMode];

      v23 = v22 == self->_renderingMode && v21;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (void)bestAvailableAudioFormat
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMXSession_SourceFormatInfoKey_BestAvailableContentType_Multichannel(void)"];
  [v0 handleFailureInFunction:v1 file:@"MRNowPlayingAudioFormatContentInfo.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end