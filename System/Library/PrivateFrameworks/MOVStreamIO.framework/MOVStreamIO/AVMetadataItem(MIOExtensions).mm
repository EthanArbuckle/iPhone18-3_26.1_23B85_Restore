@interface AVMetadataItem(MIOExtensions)
+ (CMMetadataFormatDescriptionRef)createMIOMetadataAttachmentsFormatDescription;
+ (CMMetadataFormatDescriptionRef)createMIOMetadataStreamFormatDescription;
+ (CMMetadataFormatDescriptionRef)createMIOTimeRangeMetadataStreamFormatDescription;
+ (CMMetadataFormatDescriptionRef)metadataFormatDescriptionFromDictionary:()MIOExtensions;
+ (id)attachmentsMIOMetadataItemForDictionary:()MIOExtensions pts:error:;
+ (id)attachmentsMIOMetadataItemForPixelBuffer:()MIOExtensions pts:error:;
+ (id)attachmentsMIOTimedMetadataItemForSampleBuffer:()MIOExtensions pts:error:;
+ (id)customTrackMetadataItems:()MIOExtensions;
+ (id)dictionaryRepresentationForMetadataFormatDescription:()MIOExtensions;
+ (id)metadataItemForTimeCode:()MIOExtensions;
+ (id)metadataItemForTimeRangeMetadataEndTime:()MIOExtensions;
+ (id)metadataItemForTimeRangeMetadataStartTime:()MIOExtensions;
+ (id)metadataItemFromDictionary:()MIOExtensions;
+ (id)metadataItemsForMetadataStreamFromData:()MIOExtensions copyData:;
+ (id)mioMovieMetadataItem;
+ (id)movMetadataItemWithSessionStartTime:()MIOExtensions error:;
+ (id)movMetadataItemWithTimeRangeMetadataKeyHint:()MIOExtensions error:;
+ (id)qtTrackMetadataItemsForStreamId:()MIOExtensions;
+ (id)trackMetadataItemWithAdditionalCompressionProperties:()MIOExtensions error:;
+ (id)trackMetadataItemWithEncodedPixelFormat:()MIOExtensions;
+ (id)trackMetadataItemWithExactBytesPerRow:()MIOExtensions pixelFormat:;
+ (id)trackMetadataItemWithInputPixelFormat:()MIOExtensions;
+ (id)trackMetadataItemWithMIOEncoderType:()MIOExtensions;
+ (id)trackMetadataItemWithOutputPixelFormatOverride:()MIOExtensions;
+ (id)trackMetadataItemWithQTTrackCharacteristic:()MIOExtensions;
+ (id)trackMetadataItemWithQTTrackName:()MIOExtensions;
+ (id)trackMetadataItemWithRawBayerRearrangeType:()MIOExtensions;
+ (id)trackMetadataItemWithSerializationMode:()MIOExtensions;
+ (id)trackMetadataItemWithStereoViewEncoding:()MIOExtensions;
+ (id)trackMetadataItemWithStreamId:()MIOExtensions;
+ (id)trackMetadataItemWithTimeRangeMetadata:()MIOExtensions;
- (id)dictionaryRepresentation;
- (id)valueAsTimeRangeMetadataKeyHint;
- (void)valueAsMovSessionStartTime;
- (void)valueAsTimeCode;
@end

@implementation AVMetadataItem(MIOExtensions)

+ (id)dictionaryRepresentationForMetadataFormatDescription:()MIOExtensions
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v5 = [(__CFDictionary *)CMFormatDescriptionGetExtensions(desc) objectForKeyedSubscript:@"MetadataKeyTable"];
  allValues = [v5 allValues];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:MediaSubType];
  [dictionary setObject:v8 forKey:@"formatType"];

  if (allValues)
  {
    [dictionary setObject:allValues forKey:@"metadataKeys"];
  }

  return dictionary;
}

+ (CMMetadataFormatDescriptionRef)metadataFormatDescriptionFromDictionary:()MIOExtensions
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"formatType"];
  intValue = [v4 intValue];

  v6 = [v3 objectForKey:@"metadataKeys"];
  formatDescriptionOut = 0;
  v7 = CMMetadataFormatDescriptionCreateWithKeys(*MEMORY[0x277CBECE8], intValue, v6, &formatDescriptionOut);
  if (v7)
  {
    v8 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v13 = v7;
      _os_log_impl(&dword_257883000, v8, OS_LOG_TYPE_ERROR, "Cannot create metadata format description (err: %d).", buf, 8u);
    }

    v9 = 0;
  }

  else
  {
    v9 = formatDescriptionOut;
  }

  return v9;
}

+ (CMMetadataFormatDescriptionRef)createMIOMetadataAttachmentsFormatDescription
{
  v19[2] = *MEMORY[0x277D85DE8];
  v0 = +[MIOVersion versionZero];
  v1 = [v0 versionedKey:@"mdta/com.apple.stream_sample_attachments" modifier:0];

  v3 = *MEMORY[0x277CC0600];
  v17[0] = *MEMORY[0x277CC0610];
  v2 = v17[0];
  v17[1] = v3;
  v4 = *MEMORY[0x277CC05B8];
  v18[0] = v1;
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v19[0] = v5;
  v15[0] = v2;
  v15[1] = v3;
  v16[0] = @"mdta/com.apple.stream_sample_attachments";
  v16[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v19[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  formatDescriptionOut = 0;
  v8 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x277CBECE8], 0x6D656278u, v7, &formatDescriptionOut);
  if (v8)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v8;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "Cannot create metadata attachments format description (err: %d).", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v10 = formatDescriptionOut;
  }

  return v10;
}

+ (CMMetadataFormatDescriptionRef)createMIOTimeRangeMetadataStreamFormatDescription
{
  v20[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v2 = *MEMORY[0x277CC0600];
  v19[0] = *MEMORY[0x277CC0610];
  v1 = v19[0];
  v19[1] = v2;
  v3 = *MEMORY[0x277CC05D8];
  v20[0] = @"mdta/com.apple.stream_time_range_start";
  v20[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [array addObject:v4];

  v17[0] = v1;
  v17[1] = v2;
  v18[0] = @"mdta/com.apple.stream_time_range_end";
  v18[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [array addObject:v5];

  v15[0] = v1;
  v15[1] = v2;
  v6 = *MEMORY[0x277CC05B8];
  v16[0] = @"mdta/com.apple.stream_time_code";
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [array addObject:v7];

  formatDescriptionOut = 0;
  v8 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x277CBECE8], 0x6D656278u, array, &formatDescriptionOut);
  if (v8)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v8;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "Cannot create time range metadata stream format description (err: %d).", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v10 = formatDescriptionOut;
  }

  return v10;
}

+ (CMMetadataFormatDescriptionRef)createMIOMetadataStreamFormatDescription
{
  v19[2] = *MEMORY[0x277D85DE8];
  v0 = +[MIOVersion versionZero];
  v1 = [v0 versionedKey:@"mdta/com.apple.metadata_stream_item" modifier:0];

  v3 = *MEMORY[0x277CC0600];
  v17[0] = *MEMORY[0x277CC0610];
  v2 = v17[0];
  v17[1] = v3;
  v4 = *MEMORY[0x277CC05B8];
  v18[0] = v1;
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v19[0] = v5;
  v15[0] = v2;
  v15[1] = v3;
  v16[0] = @"mdta/com.apple.metadata_stream_item";
  v16[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v19[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  formatDescriptionOut = 0;
  v8 = CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x277CBECE8], 0x6D656278u, v7, &formatDescriptionOut);
  if (v8)
  {
    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v8;
      _os_log_impl(&dword_257883000, v9, OS_LOG_TYPE_ERROR, "Cannot create metadata stream format description (err: %d).", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v10 = formatDescriptionOut;
  }

  return v10;
}

+ (id)attachmentsMIOMetadataItemForPixelBuffer:()MIOExtensions pts:error:
{
  v8 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
  v9 = [MIOPixelBufferUtility isPixelBufferRawBayer:buffer];
  if ((v9 | [MIOPixelBufferUtility isPixelBufferCompandedRawBayer:buffer]))
  {
    v10 = [(__CFDictionary *)v8 mutableCopy];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(buffer)];
    [v10 setValue:v11 forKey:@"RawBayerFormat"];

    v12 = [v10 copy];
    v8 = v12;
  }

  v13 = objc_opt_class();
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = [v13 attachmentsMIOMetadataItemForDictionary:v8 pts:&v16 error:a5];

  return v14;
}

+ (id)attachmentsMIOTimedMetadataItemForSampleBuffer:()MIOExtensions pts:error:
{
  v7 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], target, 1u);
  if (v7)
  {
    v8 = [MOVStreamIOUtility getPlistFriendlyCopyOf:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = objc_opt_class();
  v13 = *a4;
  v14 = *(a4 + 2);
  v11 = [v10 attachmentsMIOMetadataItemForDictionary:v9 pts:&v13 error:a5];

  return v11;
}

+ (id)attachmentsMIOMetadataItemForDictionary:()MIOExtensions pts:error:
{
  v7 = [MOVStreamIOUtility plistFriendlyCopyOf:?];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKey:@"OriginalTimestampWhenWrittenToFile"];

  if (!v9)
  {
    v14 = *a4;
    v10 = CMTimeCopyAsDictionary(&v14, *MEMORY[0x277CBECE8]);
    [v8 setObject:v10 forKey:@"OriginalTimestampWhenWrittenToFile"];
  }

  v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:a5];
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_sample_attachments"];
  [metadataItem setDataType:*MEMORY[0x277CC05B8]];
  [metadataItem setValue:v11];

  return metadataItem;
}

+ (id)trackMetadataItemWithStreamId:()MIOExtensions
{
  v3 = a3;
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.track_kind"];
  [metadataItem setDataType:*MEMORY[0x277CC05F0]];
  [metadataItem setValue:v3];

  return metadataItem;
}

+ (id)qtTrackMetadataItemsForStreamId:()MIOExtensions
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() trackMetadataItemWithQTTrackCharacteristic:v3];
  v5 = [objc_opt_class() trackMetadataItemWithQTTrackName:v3];
  v6 = v5;
  if (v5)
  {
    v12 = v4;
    v13 = v5;
    v7 = &v12;
    v8 = 2;
  }

  else
  {
    v11 = v4;
    v7 = &v11;
    v8 = 1;
  }

  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:{v8, v11, v12, v13, v14}];

  return v9;
}

+ (id)trackMetadataItemWithQTTrackCharacteristic:()MIOExtensions
{
  v3 = a3;
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setKey:*MEMORY[0x277CE5FF0]];
  [metadataItem setKeySpace:*MEMORY[0x277CE5FB0]];
  [metadataItem setValue:v3];

  return metadataItem;
}

+ (id)trackMetadataItemWithQTTrackName:()MIOExtensions
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"."];
  lastObject = [v4 lastObject];
  if ([v4 count] >= 6)
  {
    v6 = objc_opt_new();
    for (i = 5; [v4 count] > i; ++i)
    {
      v8 = [v4 objectAtIndex:i];
      v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:&stru_2868CF868];

      [v6 addObject:v9];
    }

    v10 = [v6 componentsJoinedByString:@"_"];

    lastObject = v10;
  }

  if (lastObject)
  {
    metadataItem = [MEMORY[0x277CE6558] metadataItem];
    [metadataItem setKey:*MEMORY[0x277CE5FF8]];
    [metadataItem setKeySpace:*MEMORY[0x277CE5FB0]];
    [metadataItem setValue:lastObject];
  }

  else
  {
    metadataItem = 0;
  }

  return metadataItem;
}

+ (id)trackMetadataItemWithInputPixelFormat:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_sample_format"];
  [metadataItem setDataType:*MEMORY[0x277CC05F0]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)trackMetadataItemWithOutputPixelFormatOverride:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_output_pixel_format_override"];
  [metadataItem setDataType:*MEMORY[0x277CC05D0]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)trackMetadataItemWithEncodedPixelFormat:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_encoded_sample_format"];
  [metadataItem setDataType:*MEMORY[0x277CC05F0]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)trackMetadataItemWithRawBayerRearrangeType:()MIOExtensions
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_2868E37B0;
  }

  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_raw_bayer_rearrange_type"];
  [metadataItem setDataType:*MEMORY[0x277CC05E8]];
  [metadataItem setExtraAttributes:0];
  [metadataItem setValue:v4];

  return metadataItem;
}

+ (id)trackMetadataItemWithMIOEncoderType:()MIOExtensions
{
  v3 = a3;
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.writer_encoder_type"];
  [metadataItem setDataType:*MEMORY[0x277CC05D0]];
  [metadataItem setExtraAttributes:0];
  [metadataItem setValue:v3];

  return metadataItem;
}

+ (id)trackMetadataItemWithSerializationMode:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_sample_attachments_serialization_mode"];
  [metadataItem setDataType:*MEMORY[0x277CC05F0]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)trackMetadataItemWithStereoViewEncoding:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_stereo_video"];
  [metadataItem setDataType:*MEMORY[0x277CC05F0]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)trackMetadataItemWithAdditionalCompressionProperties:()MIOExtensions error:
{
  v5 = [MOVStreamIOUtility plistFriendlyCopyOf:?];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:a4];
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_additional_compression_properties"];
  [metadataItem setDataType:*MEMORY[0x277CC05B8]];
  [metadataItem setExtraAttributes:0];
  [metadataItem setValue:v7];

  return metadataItem;
}

+ (id)trackMetadataItemWithTimeRangeMetadata:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_time_range_metadata"];
  [metadataItem setDataType:*MEMORY[0x277CC05F0]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)trackMetadataItemWithExactBytesPerRow:()MIOExtensions pixelFormat:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_sample_exact_bytes_per_row"];
  [metadataItem setExtraAttributes:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(MIOPixelBufferUtility *)PixelBufferUtility numberOfPlanesForPixelFormatType:a4];
    if (v7 < 1)
    {
      [metadataItem setDataType:*MEMORY[0x277CC05D8]];
      [metadataItem setValue:v5];
      goto LABEL_18;
    }

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    do
    {
      [v8 addObject:v5];
      --v7;
    }

    while (v7);
    v9 = [MOVStreamIOUtility plistSerializedObject:v8 error:0];
    if (v9)
    {
      [metadataItem setDataType:*MEMORY[0x277CC05B8]];
      [metadataItem setValue:v9];
      [metadataItem setIdentifier:@"mdta/com.apple.stream_sample_exact_bytes_per_row_multiplanar"];

LABEL_10:
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = objc_opt_class();
        v11 = v14;
        _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_ERROR, "Invalid 'exact-bytes-per-row' value type (%@), allowed types: NSNUmber, NSArray<NSNumber*>.", &v13, 0xCu);
      }

      goto LABEL_17;
    }

    v8 = [MOVStreamIOUtility plistSerializedObject:v5 error:0];
    if (v8)
    {
      [metadataItem setDataType:*MEMORY[0x277CC05B8]];
      [metadataItem setValue:v8];
      [metadataItem setIdentifier:@"mdta/com.apple.stream_sample_exact_bytes_per_row_multiplanar"];
      goto LABEL_10;
    }
  }

LABEL_17:
  metadataItem = 0;
LABEL_18:

  return metadataItem;
}

+ (id)customTrackMetadataItems:()MIOExtensions
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v15;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = *MEMORY[0x277CC05F0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        metadataItem = [MEMORY[0x277CE6558] metadataItem];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"mdta/custom.", v9];
        [metadataItem setIdentifier:v11];
        [metadataItem setDataType:v7];
        [metadataItem setExtraAttributes:0];
        v12 = [v4 objectForKey:v9];
        [metadataItem setValue:v12];

        [v3 addObject:metadataItem];
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v3 copy];

  return v13;
}

+ (id)metadataItemsForMetadataStreamFromData:()MIOExtensions copyData:
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v15;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:{16, v15}];
  if (v6)
  {
    v7 = *v18;
    v8 = *MEMORY[0x277CC05B8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        metadataItem = [MEMORY[0x277CE6558] metadataItem];
        [metadataItem setIdentifier:@"mdta/com.apple.metadata_stream_item"];
        [metadataItem setDataType:v8];
        [metadataItem setExtraAttributes:0];
        if (a4)
        {
          v12 = [v10 copy];
          [metadataItem setValue:v12];
        }

        else
        {
          [metadataItem setValue:v10];
        }

        [v5 addObject:metadataItem];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = [v5 copy];

  return v13;
}

+ (id)mioMovieMetadataItem
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  [v0 setObject:@"3.34.5" forKey:@"version"];
  v1 = [MOVStreamIOUtility plistFriendlyCopyOf:v0];
  v7 = 0;
  v2 = [MEMORY[0x277CCAC58] dataWithPropertyList:v1 format:100 options:0 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_257883000, v4, OS_LOG_TYPE_ERROR, "Cannot serialize MIO mov metadata: %@", buf, 0xCu);
    }

    metadataItem = 0;
  }

  else
  {
    metadataItem = [MEMORY[0x277CE6558] metadataItem];
    [metadataItem setIdentifier:@"mdta/com.apple.framework.state.MOVStreamIO"];
    [metadataItem setDataType:*MEMORY[0x277CC05B8]];
    [metadataItem setExtraAttributes:0];
    [metadataItem setValue:v2];
  }

  return metadataItem;
}

+ (id)movMetadataItemWithSessionStartTime:()MIOExtensions error:
{
  v9 = *a3;
  v5 = CMTimeCopyAsDictionary(&v9, *MEMORY[0x277CBECE8]);
  v6 = [MOVStreamIOUtility plistSerializedObject:v5 error:a4];
  if (v6)
  {
    metadataItem = [MEMORY[0x277CE6558] metadataItem];
    [metadataItem setIdentifier:@"mdta/com.apple.framework.mio.session.starttime"];
    [metadataItem setDataType:*MEMORY[0x277CC05B8]];
    [metadataItem setValue:v6];
  }

  else
  {
    metadataItem = 0;
  }

  return metadataItem;
}

+ (id)movMetadataItemWithTimeRangeMetadataKeyHint:()MIOExtensions error:
{
  v0 = [MOVStreamIOUtility plistSerializedObject:"plistSerializedObject:error:" error:?];
  if (v0)
  {
    metadataItem = [MEMORY[0x277CE6558] metadataItem];
    [metadataItem setIdentifier:@"mdta/com.apple.framework.mio.timeRangeMetadataKeyHint"];
    [metadataItem setDataType:*MEMORY[0x277CC05B8]];
    [metadataItem setValue:v0];
  }

  else
  {
    metadataItem = 0;
  }

  return metadataItem;
}

- (void)valueAsMovSessionStartTime
{
  identifier = [self identifier];
  v4 = [identifier isEqualToString:@"mdta/com.apple.framework.mio.session.starttime"];

  if (v4)
  {
    dataValue = [self dataValue];
    v5 = [MOVStreamIOUtility plistDeserializedObject:"plistDeserializedObject:error:" error:?];
    v6 = v5;
    if (v5)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      CMTimeMakeFromDictionary(a2, v5);
    }

    else
    {
      v8 = MEMORY[0x277CC0890];
      *a2 = *MEMORY[0x277CC0890];
      *(a2 + 16) = *(v8 + 16);
    }
  }

  else
  {
    v7 = MEMORY[0x277CC0890];
    *a2 = *MEMORY[0x277CC0890];
    *(a2 + 16) = *(v7 + 16);
  }
}

- (id)valueAsTimeRangeMetadataKeyHint
{
  identifier = [self identifier];
  v3 = [identifier isEqualToString:@"mdta/com.apple.framework.mio.timeRangeMetadataKeyHint"];

  if (v3)
  {
    dataValue = [self dataValue];
    v5 = [MOVStreamIOUtility plistDeserializedObject:dataValue error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)metadataItemForTimeRangeMetadataStartTime:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_time_range_start"];
  [metadataItem setDataType:*MEMORY[0x277CC05D8]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)metadataItemForTimeRangeMetadataEndTime:()MIOExtensions
{
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setIdentifier:@"mdta/com.apple.stream_time_range_end"];
  [metadataItem setDataType:*MEMORY[0x277CC05D8]];
  [metadataItem setExtraAttributes:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [metadataItem setValue:v5];

  return metadataItem;
}

+ (id)metadataItemForTimeCode:()MIOExtensions
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a3 + 1)];
  [v4 setObject:v5 forKey:@"counter"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a3 + 3)];
  [v4 setObject:v6 forKey:@"flags"];

  v7 = [MEMORY[0x277CCABB0] numberWithShort:a3[11]];
  [v4 setObject:v7 forKey:@"frames"];

  v8 = [MEMORY[0x277CCABB0] numberWithShort:a3[8]];
  [v4 setObject:v8 forKey:@"hours"];

  v9 = [MEMORY[0x277CCABB0] numberWithShort:a3[9]];
  [v4 setObject:v9 forKey:@"minutes"];

  v10 = [MEMORY[0x277CCABB0] numberWithShort:a3[10]];
  [v4 setObject:v10 forKey:@"seconds"];

  v11 = [MEMORY[0x277CCABB0] numberWithShort:a3[1]];
  [v4 setObject:v11 forKey:@"subframes_divisor"];

  v12 = [MEMORY[0x277CCABB0] numberWithShort:*a3];
  [v4 setObject:v12 forKey:@"subframes"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a3 + 2)];
  [v4 setObject:v13 forKey:@"type"];

  v14 = [MOVStreamIOUtility plistFriendlyCopyOf:v4];
  v20 = 0;
  v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:100 options:0 error:&v20];
  v16 = v20;
  if (v16)
  {
    v17 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_ERROR, "Cannot serialize time code for MIO metadata: %@", buf, 0xCu);
    }

    metadataItem = 0;
  }

  else
  {
    metadataItem = [MEMORY[0x277CE6558] metadataItem];
    [metadataItem setIdentifier:@"mdta/com.apple.stream_time_code"];
    [metadataItem setDataType:*MEMORY[0x277CC05B8]];
    [metadataItem setExtraAttributes:0];
    [metadataItem setValue:v15];
  }

  return metadataItem;
}

- (void)valueAsTimeCode
{
  identifier = [self identifier];
  v4 = [identifier isEqualToString:@"mdta/com.apple.stream_time_code"];

  if (v4)
  {
    dataValue = [self dataValue];
    v5 = [MOVStreamIOUtility plistDeserializedObject:"plistDeserializedObject:error:" error:?];
    v6 = v5;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"counter"];
      *(a2 + 4) = [v7 unsignedIntValue];

      v8 = [v6 objectForKeyedSubscript:@"flags"];
      *(a2 + 12) = [v8 unsignedIntValue];

      v9 = [v6 objectForKeyedSubscript:@"frames"];
      *(a2 + 22) = [v9 shortValue];

      v10 = [v6 objectForKeyedSubscript:@"hours"];
      *(a2 + 16) = [v10 shortValue];

      v11 = [v6 objectForKeyedSubscript:@"minutes"];
      *(a2 + 18) = [v11 shortValue];

      v12 = [v6 objectForKeyedSubscript:@"seconds"];
      *(a2 + 20) = [v12 shortValue];

      v13 = [v6 objectForKeyedSubscript:@"subframes_divisor"];
      *(a2 + 2) = [v13 shortValue];

      v14 = [v6 objectForKeyedSubscript:@"subframes"];
      *a2 = [v14 shortValue];

      v15 = [v6 objectForKeyedSubscript:@"type"];
      *(a2 + 8) = [v15 unsignedIntValue];
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [self identifier];

  if (identifier)
  {
    identifier2 = [self identifier];
    [dictionary setObject:identifier2 forKey:@"identifier"];
  }

  dataType = [self dataType];

  if (dataType)
  {
    dataType2 = [self dataType];
    [dictionary setObject:dataType2 forKey:@"dataType"];
  }

  value = [self value];

  if (value)
  {
    value2 = [self value];
    [dictionary setObject:value2 forKey:@"value"];
  }

  extraAttributes = [self extraAttributes];

  if (extraAttributes)
  {
    extraAttributes2 = [self extraAttributes];
    [dictionary setObject:extraAttributes2 forKey:@"extraAttributes"];
  }

  return dictionary;
}

+ (id)metadataItemFromDictionary:()MIOExtensions
{
  v3 = a3;
  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  v5 = [v3 objectForKey:@"identifier"];
  [metadataItem setIdentifier:v5];

  v6 = [v3 objectForKey:@"dataType"];
  [metadataItem setDataType:v6];

  v7 = [v3 objectForKey:@"value"];
  [metadataItem setValue:v7];

  v8 = [v3 objectForKey:@"extraAttributes"];
  [metadataItem setExtraAttributes:v8];

  return metadataItem;
}

@end