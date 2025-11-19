@interface BlastDoorMediaMetadata
- (BlastDoorMediaMetadata)init;
- (BlastDoorMediaMetadata_LargeImageContextualInfo)largeImageContextualInfo;
- (NSDate)gpsTimestamp;
- (NSDate)imageDate;
- (NSString)IPTCCredit;
- (NSString)captureMode;
- (NSString)codecFourCharCode;
- (NSString)gpsSpeedRef;
- (NSString)imageDirectionRef;
- (NSString)isVideoMontage;
- (NSString)lensMake;
- (NSString)model;
- (NSString)originalFileName;
- (NSString)originatingAssetIdentifier;
- (NSString)spatialOverCaptureIdentifier;
- (NSString)uniformTypeIdentifier;
- (NSString)userComment;
- (NSString)videoComplementMediaGroupId;
- (NSUUID)burstUuid;
- (double)altitude;
- (double)apertureValue;
- (double)avDuration;
- (double)avFPS;
- (double)exifAuxFlashCompensation;
- (double)focalLenIn35mmFilm;
- (double)focalLength;
- (double)generativeAIImageType;
- (double)gifDelayTime;
- (double)gpsHPositioningError;
- (double)gpsSpeed;
- (double)hdrGain;
- (double)imageDirection;
- (double)latitude;
- (double)longitude;
- (double)semanticStyleSceneBias;
- (double)semanticStyleWarmthBias;
- (double)shutterSpeed;
- (double)smartStyleCast;
- (double)smartStyleColorBias;
- (double)smartStyleIntensity;
- (double)smartStyleToneBias;
- (double)smartStyleVideoCastValue;
- (double)subsecTimeOriginal;
- (double)videoComplementDurationTimescale;
- (double)videoComplementDurationValue;
- (double)videoComplementImageDisplayTimescale;
- (double)videoComplementImageDisplayValue;
- (double)videoDurationTimescale;
- (double)videoDurationValue;
- (int64_t)cameraUsedForCapture;
- (int64_t)ciffWhiteBalanceIndex;
- (int64_t)exposureBiasValue;
- (int64_t)flash;
- (int64_t)isoRatingValue;
- (int64_t)lightSource;
- (int64_t)meteringMode;
- (int64_t)semanticStylePreset;
- (int64_t)semanticStyleRenderingVersion;
- (int64_t)smartStyleRenderingVersion;
- (int64_t)timezoneOffset;
- (int64_t)whiteBalance;
- (unint64_t)fileSize;
- (unint64_t)rawPixelWidth;
- (unint64_t)stillImageCaptureFlags;
- (unint64_t)variationIdentifier;
@end

@implementation BlastDoorMediaMetadata

- (BlastDoorMediaMetadata_LargeImageContextualInfo)largeImageContextualInfo
{
  v4 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  if (self->mediaMetadata[OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata + 16])
  {
    v5 = 0;
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v7 = *(v4 + 2);
    v11 = *v4;
    v8 = type metadata accessor for _ObjCMediaMetadata_LargeImageContextualInfoWrapper();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR___BlastDoorMediaMetadata_LargeImageContextualInfo_mediaMetadata_LargeImageContextualInfo];
    *v10 = v11;
    *(v10 + 2) = v7;
    v12.receiver = v9;
    v12.super_class = v8;
    v5 = [(BlastDoorMediaMetadata *)&v12 init];
  }

  return v5;
}

- (NSDate)imageDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v8 = type metadata accessor for MediaMetadata();
  sub_213FB2E54(&v7[*(v8 + 20)], v6, &qword_27C913090, &unk_2146E9DB0);
  v9 = sub_2146D8B08();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2146D8AD8();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (int64_t)timezoneOffset
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 24)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)subsecTimeOriginal
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 28)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)rawPixelWidth
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 36)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (NSString)lensMake
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 48)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)apertureValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 64)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)exposureBiasValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 68)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)flash
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 72)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)focalLength
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 76)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)focalLenIn35mmFilm
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 80)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)isoRatingValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 84)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)meteringMode
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 88)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)shutterSpeed
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 92)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)model
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 96)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)whiteBalance
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 104)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)lightSource
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 108)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)ciffWhiteBalanceIndex
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 112)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)hdrGain
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 120)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)videoComplementMediaGroupId
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 132)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)gifDelayTime
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 136)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)variationIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 140)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)videoComplementDurationValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 144)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoComplementDurationTimescale
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 148)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoComplementImageDisplayValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 152)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoComplementImageDisplayTimescale
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 156)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)avDuration
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 160)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)avFPS
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 164)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)codecFourCharCode
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 168)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)captureMode
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 172)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)isVideoMontage
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 176)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)videoDurationValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 184)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)videoDurationTimescale
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 188)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)originatingAssetIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 192)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)longitude
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 196)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)latitude
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 200)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)altitude
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 204)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)gpsSpeed
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 208)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)gpsSpeedRef
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 212)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDate)gpsTimestamp
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v8 = type metadata accessor for MediaMetadata();
  sub_213FB2E54(&v7[*(v8 + 216)], v6, &qword_27C913090, &unk_2146E9DB0);
  v9 = sub_2146D8B08();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2146D8AD8();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (double)gpsHPositioningError
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 220)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)imageDirection
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 224)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)imageDirectionRef
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 228)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)uniformTypeIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 232)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)fileSize
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 236)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (NSString)originalFileName
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 240)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSUUID)burstUuid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v8 = type metadata accessor for MediaMetadata();
  sub_213FB2E54(&v7[*(v8 + 248)], v6, &unk_27C904F30, &unk_2146EFA20);
  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2146D8B38();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (NSString)userComment
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 252)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)spatialOverCaptureIdentifier
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 260)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)semanticStyleSceneBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 264)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)semanticStyleWarmthBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 268)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)semanticStyleRenderingVersion
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 272)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)semanticStylePreset
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 276)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)smartStyleToneBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 284)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)smartStyleColorBias
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 288)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)smartStyleIntensity
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 292)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)smartStyleCast
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 296)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (int64_t)smartStyleRenderingVersion
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 300)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (double)smartStyleVideoCastValue
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 308)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (unint64_t)stillImageCaptureFlags
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 324)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (int64_t)cameraUsedForCapture
{
  v2 = self;
  v3 = sub_214566DF0();

  return v3;
}

- (double)exifAuxFlashCompensation
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 336)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (double)generativeAIImageType
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 356)];
  result = *v3;
  if (v3[8])
  {
    return 0.0;
  }

  return result;
}

- (NSString)IPTCCredit
{
  v2 = self + OBJC_IVAR___BlastDoorMediaMetadata_mediaMetadata;
  v3 = &v2[*(type metadata accessor for MediaMetadata() + 360)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BlastDoorMediaMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end