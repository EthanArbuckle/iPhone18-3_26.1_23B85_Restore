@interface MRNowPlayingAudioFormatContentInfo
- (BOOL)isEqual:(id)equal;
- (MRNowPlayingAudioFormatContentInfo)initWithData:(id)data;
- (MRNowPlayingAudioFormatContentInfo)initWithPid:(int)pid bundleID:(id)d audioSessionID:(id)iD audioFormat:(id)format channelCount:(id)count bestAvailableContent:(id)content isEligibleForSpatialization:(id)spatialization isSpatialized:(id)self0;
- (MRNowPlayingAudioFormatContentInfo)initWithProtobuf:(id)protobuf;
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
  audioFormatDescription = [(MRNowPlayingAudioFormatContentInfo *)self audioFormatDescription];
  v7 = audioFormatDescription;
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

  v10 = [v3 stringWithFormat:@"<%@: %p | session id: %@ | audio format: %@ - %@ | channel #: %@ | available: %@ | eligible: %@ | active: %@ | intended :%ld | resolved :%ld | pid: %i | bundleID: %@>", v4, self, audioSessionID, audioFormatDescription, *&self->_audioFormat, self->_bestAvailableContent, v9, v8, self->_intendedSpatialExperience, self->_resolvedSpatialExperience, self->_pid, self->_bundleID];

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
  bestAvailableAudioFormat = [(MRNowPlayingAudioFormatContentInfo *)self bestAvailableAudioFormat];
  if (bestAvailableAudioFormat == 1)
  {
    v4 = @"MULTICHANNEL_AVAILABLE";
    goto LABEL_5;
  }

  if (bestAvailableAudioFormat == 2)
  {
    v4 = @"SPATIAL_ATMOS_AVAILABLE";
LABEL_5:
    audioFormatDescription = MRLocalizedString(v4);
    goto LABEL_7;
  }

  audioFormatDescription = [(MRNowPlayingAudioFormatContentInfo *)self audioFormatDescription];
LABEL_7:

  return audioFormatDescription;
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
  protobuf = [(MRNowPlayingAudioFormatContentInfo *)self protobuf];
  data = [protobuf data];

  return data;
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

- (MRNowPlayingAudioFormatContentInfo)initWithPid:(int)pid bundleID:(id)d audioSessionID:(id)iD audioFormat:(id)format channelCount:(id)count bestAvailableContent:(id)content isEligibleForSpatialization:(id)spatialization isSpatialized:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  formatCopy = format;
  countCopy = count;
  contentCopy = content;
  spatializationCopy = spatialization;
  spatializedCopy = spatialized;
  v27.receiver = self;
  v27.super_class = MRNowPlayingAudioFormatContentInfo;
  v20 = [(MRNowPlayingAudioFormatContentInfo *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_pid = pid;
    objc_storeStrong(&v20->_bundleID, d);
    objc_storeStrong(&v21->_audioSessionID, iD);
    objc_storeStrong(&v21->_audioFormat, format);
    objc_storeStrong(&v21->_channelCount, count);
    objc_storeStrong(&v21->_bestAvailableContent, content);
    v21->_spatialized = [spatializedCopy BOOLValue];
    v21->_eligibleForSpatialization = [spatializationCopy BOOLValue];
  }

  return v21;
}

- (MRNowPlayingAudioFormatContentInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v18.receiver = self;
    v18.super_class = MRNowPlayingAudioFormatContentInfo;
    v5 = [(MRNowPlayingAudioFormatContentInfo *)&v18 init];
    if (v5)
    {
      bundleID = [protobufCopy bundleID];
      bundleID = v5->_bundleID;
      v5->_bundleID = bundleID;

      if ([protobufCopy hasAudioSessionID])
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(protobufCopy, "audioSessionID")}];
        audioSessionID = v5->_audioSessionID;
        v5->_audioSessionID = v8;
      }

      if ([protobufCopy hasAudioFormat])
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(protobufCopy, "audioFormat")}];
        audioFormat = v5->_audioFormat;
        v5->_audioFormat = v10;
      }

      if ([protobufCopy hasChannelCount])
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(protobufCopy, "channelCount")}];
        channelCount = v5->_channelCount;
        v5->_channelCount = v12;
      }

      bestAvailableContent = [protobufCopy bestAvailableContent];
      bestAvailableContent = v5->_bestAvailableContent;
      v5->_bestAvailableContent = bestAvailableContent;

      v5->_eligibleForSpatialization = [protobufCopy eligibleForSpatialization];
      v5->_spatialized = [protobufCopy spatialized];
      v5->_intendedSpatialExperience = [protobufCopy intendedSpatialExperience];
      v5->_resolvedSpatialExperience = [protobufCopy resolvedSpatialExperience];
      v5->_pid = [protobufCopy pid];
      v5->_renderingMode = [protobufCopy renderingMode];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRNowPlayingAudioFormatContentInfo)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRMRNowPlayingAudioFormatContentInfoProtobuf alloc] initWithData:dataCopy];

    self = [(MRNowPlayingAudioFormatContentInfo *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(MRNowPlayingAudioFormatContentInfo *)v5 pid];
      pid = self->_pid;
      bundleID = [(MRNowPlayingAudioFormatContentInfo *)v5 bundleID];
      v9 = [bundleID isEqualToString:self->_bundleID];
      if (v6 == pid)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      audioSessionID = [(MRNowPlayingAudioFormatContentInfo *)v5 audioSessionID];
      unsignedIntValue = [audioSessionID unsignedIntValue];
      if (unsignedIntValue != [(NSNumber *)self->_audioSessionID unsignedIntValue])
      {
        v10 = 0;
      }

      audioFormat = [(MRNowPlayingAudioFormatContentInfo *)v5 audioFormat];
      unsignedIntValue2 = [audioFormat unsignedIntValue];
      if (unsignedIntValue2 != [(NSNumber *)self->_audioFormat unsignedIntValue])
      {
        v10 = 0;
      }

      channelCount = [(MRNowPlayingAudioFormatContentInfo *)v5 channelCount];
      unsignedIntValue3 = [channelCount unsignedIntValue];
      if (unsignedIntValue3 == [(NSNumber *)self->_channelCount unsignedIntValue])
      {
        v17 = v10;
      }

      else
      {
        v17 = 0;
      }

      bestAvailableContent = [(MRNowPlayingAudioFormatContentInfo *)v5 bestAvailableContent];
      v19 = v17 & [bestAvailableContent isEqualToString:self->_bestAvailableContent];

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
      renderingMode = [(MRNowPlayingAudioFormatContentInfo *)v5 renderingMode];

      v23 = renderingMode == self->_renderingMode && v21;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMXSession_SourceFormatInfoKey_BestAvailableContentType_Multichannel(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"MRNowPlayingAudioFormatContentInfo.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end