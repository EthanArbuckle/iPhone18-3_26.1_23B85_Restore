@interface IMMessagePartSyndicationRange
+ (id)_stringFromSyndicationStatus:(int64_t)a3;
+ (id)_stringFromSyndicationType:(int64_t)a3;
+ (id)deserializeSyndicationRangeFromString:(id)a3;
+ (id)findChangesFromRangeArray:(id)a3 comparedToRangeArray:(id)a4;
+ (id)maxStartDateForRanges:(id)a3;
+ (id)messagePartSyndicationRangeForRange:(_NSRange)a3 inRangesArray:(id)a4;
+ (id)messageRangeFromTokens_v1:(id)a3;
+ (id)messageRangeFromTokens_v3:(id)a3;
+ (id)minStartDateForRanges:(id)a3;
+ (id)rangesFromSerializedString:(id)a3;
+ (id)removeAssetInfoForAsset:(int64_t)a3 range:(id)a4;
+ (id)replaceAssetInfoWith:(id)a3 asset:(int64_t)a4 range:(id)a5;
+ (id)serializedStringFromArray:(id)a3;
+ (id)syndicationRangeForAssetDescriptor:(id)a3 range:(id)a4;
+ (id)unarchiveClasses;
+ (id)updateAssetInfoWith:(id)a3 asset:(int64_t)a4 range:(id)a5;
+ (id)updateMessagesRanges:(id)a3 withMessagePartSyndicationRanges:(id)a4 didUpdate:(BOOL *)a5;
- (BOOL)_canBeReplacedByRange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (IMMessagePartSyndicationRange)initWithCoder:(id)a3;
- (IMMessagePartSyndicationRange)initWithSyndicationAction:(id)a3;
- (IMMessagePartSyndicationRange)initWithSyndicationType:(int64_t)a3 messagePartRange:(_NSRange)a4 syndicationStartDate:(id)a5 syndicationStatus:(int64_t)a6 assetDescriptor:(id)a7;
- (NSString)serializedString;
- (_NSRange)messagePartRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)syndicationForPartIndex:(unint64_t)a3 asset:(int64_t)a4;
- (unint64_t)serializedVersion;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMMessagePartSyndicationRange

- (NSString)serializedString
{
  v26[8] = *MEMORY[0x1E69E9840];
  serializedString = self->_serializedString;
  if (!serializedString)
  {
    v4 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
    v5 = [v4 serializedString];

    if (v5 && [v5 length])
    {
      v6 = [v5 cStringUsingEncoding:4];
      v26[0] = @"|";
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMMessagePartSyndicationRange serializedVersion](self, "serializedVersion")}];
      v26[1] = v24;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMMessagePartSyndicationRange syndicationType](self, "syndicationType")}];
      v26[2] = v7;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMMessagePartSyndicationRange messagePartRange](self, "messagePartRange")}];
      v26[3] = v8;
      v9 = MEMORY[0x1E696AD98];
      [(IMMessagePartSyndicationRange *)self messagePartRange];
      v11 = [v9 numberWithUnsignedInteger:v10];
      v26[4] = v11;
      v12 = MEMORY[0x1E696AD98];
      v13 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
      v14 = [v12 numberWithLongLong:{objc_msgSend(v13, "__im_nanosecondTimeInterval")}];
      v26[5] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMMessagePartSyndicationRange syndicationStatus](self, "syndicationStatus")}];
      v26[6] = v15;
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
      v26[7] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:8];
    }

    else
    {
      v25[0] = @"|";
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMMessagePartSyndicationRange serializedVersion](self, "serializedVersion")}];
      v25[1] = v24;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMMessagePartSyndicationRange syndicationType](self, "syndicationType")}];
      v25[2] = v7;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMMessagePartSyndicationRange messagePartRange](self, "messagePartRange")}];
      v25[3] = v8;
      v18 = MEMORY[0x1E696AD98];
      [(IMMessagePartSyndicationRange *)self messagePartRange];
      v11 = [v18 numberWithUnsignedInteger:v19];
      v25[4] = v11;
      v20 = MEMORY[0x1E696AD98];
      v13 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
      v14 = [v20 numberWithLongLong:{objc_msgSend(v13, "__im_nanosecondTimeInterval")}];
      v25[5] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMMessagePartSyndicationRange syndicationStatus](self, "syndicationStatus")}];
      v25[6] = v15;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:7];
    }

    v21 = [v17 componentsJoinedByString:@"|"];
    v22 = self->_serializedString;
    self->_serializedString = v21;

    serializedString = self->_serializedString;
  }

  return serializedString;
}

- (IMMessagePartSyndicationRange)initWithSyndicationType:(int64_t)a3 messagePartRange:(_NSRange)a4 syndicationStartDate:(id)a5 syndicationStatus:(int64_t)a6 assetDescriptor:(id)a7
{
  length = a4.length;
  location = a4.location;
  v14 = a5;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = IMMessagePartSyndicationRange;
  v16 = [(IMMessagePartSyndicationRange *)&v22 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_12;
  }

  if (a3 < 0xA)
  {
    if (!(location | length))
    {
      v19 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C63DC(v19);
      }

      goto LABEL_10;
    }

    v16->_syndicationType = a3;
    v16->_messagePartRange.location = location;
    v16->_messagePartRange.length = length;
    objc_storeStrong(&v16->_syndicationStartDate, a5);
    v17->_syndicationStatus = a6;
    objc_storeStrong(&v17->_assetDescriptor, a7);
LABEL_12:
    v20 = v17;
    goto LABEL_13;
  }

  v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C6420();
  }

LABEL_10:
  v20 = 0;
LABEL_13:

  return v20;
}

- (IMMessagePartSyndicationRange)initWithSyndicationAction:(id)a3
{
  v4 = a3;
  v5 = [v4 messagePartSyndicationType];
  v6 = [v4 messagePartRange];
  v8 = v7;
  v9 = [v4 syndicationStartDate];
  v10 = [v4 messagePartSyndicationStatus];

  v11 = [(IMMessagePartSyndicationRange *)self initWithSyndicationType:v5 messagePartRange:v6 syndicationStartDate:v8 syndicationStatus:v9 assetDescriptor:v10, 0];
  return v11;
}

- (IMMessagePartSyndicationRange)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IMMessagePartSyndicationRange;
  v5 = [(IMMessagePartSyndicationRange *)&v13 init];
  if (v5)
  {
    v5->_syndicationType = [v4 decodeIntegerForKey:@"syndicationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messagePartRange"];
    v5->_messagePartRange.location = [v6 rangeValue];
    v5->_messagePartRange.length = v7;

    v5->_serializedVersion = [v4 decodeIntegerForKey:@"serializedVersion"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syndicationStartDate"];
    syndicationStartDate = v5->_syndicationStartDate;
    v5->_syndicationStartDate = v8;

    v5->_syndicationStatus = [v4 decodeIntegerForKey:@"syndicationStatus"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetDescriptor"];
    assetDescriptor = v5->_assetDescriptor;
    v5->_assetDescriptor = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  syndicationType = self->_syndicationType;
  v6 = a3;
  [v6 encodeInteger:syndicationType forKey:@"syndicationType"];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_messagePartRange.location, self->_messagePartRange.length}];
  [v6 encodeObject:v5 forKey:@"messagePartRange"];

  [v6 encodeInteger:-[IMMessagePartSyndicationRange serializedVersion](self forKey:{"serializedVersion"), @"serializedVersion"}];
  [v6 encodeObject:self->_syndicationStartDate forKey:@"syndicationStartDate"];
  [v6 encodeInteger:self->_syndicationStatus forKey:@"syndicationStatus"];
  [v6 encodeObject:self->_assetDescriptor forKey:@"assetDescriptor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IMMessagePartSyndicationRange *)self syndicationType];
  v6 = [(IMMessagePartSyndicationRange *)self messagePartRange];
  v8 = v7;
  v9 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
  v10 = [(IMMessagePartSyndicationRange *)self syndicationStatus];
  v11 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
  v12 = [v4 initWithSyndicationType:v5 messagePartRange:v6 syndicationStartDate:v8 syndicationStatus:v9 assetDescriptor:{v10, v11}];

  return v12;
}

- (unint64_t)serializedVersion
{
  result = self->_serializedVersion;
  if (!result)
  {
    result = +[IMMessagePartSyndicationRange serializationVersion];
    self->_serializedVersion = result;
  }

  return result;
}

+ (id)_stringFromSyndicationType:(int64_t)a3
{
  if (a3 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E782B848[a3];
  }
}

+ (id)_stringFromSyndicationStatus:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E782B8B0[a3];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = IMMessagePartSyndicationRange;
  v4 = [(IMMessagePartSyndicationRange *)&v14 description];
  v5 = [objc_opt_class() _stringFromSyndicationType:{-[IMMessagePartSyndicationRange syndicationType](self, "syndicationType")}];
  v6 = [objc_opt_class() _stringFromSyndicationStatus:{-[IMMessagePartSyndicationRange syndicationStatus](self, "syndicationStatus")}];
  v7 = NSStringFromRange(self->_messagePartRange);
  v8 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
  v9 = [(IMMessagePartSyndicationRange *)self serializedVersion];
  v10 = [(IMMessagePartSyndicationRange *)self serializedString];
  v11 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
  v12 = [v3 stringWithFormat:@"%@, syndicationType: %@, syndicationStatus: %@, messagePartRange: %@, syndicationStartDate: %@, version: %ld, serializedString: %@, assetSyndications: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v7 = [v4 serializedVersion];
    if (v7 == -[IMMessagePartSyndicationRange serializedVersion](self, "serializedVersion") && (v8 = [v4 syndicationType], v8 == -[IMMessagePartSyndicationRange syndicationType](self, "syndicationType")) && (v9 = objc_msgSend(v4, "syndicationStatus"), v9 == -[IMMessagePartSyndicationRange syndicationStatus](self, "syndicationStatus")))
    {
      v10 = [v4 syndicationStartDate];
      v11 = [v10 __im_nanosecondTimeInterval];
      v12 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
      if (v11 == [v12 __im_nanosecondTimeInterval])
      {
        v13 = [v4 messagePartRange];
        v15 = v14;
        v18 = v13 == [(IMMessagePartSyndicationRange *)self messagePartRange]&& v15 == v16;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = [v4 assetDescriptor];
    v20 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
    v21 = v20 | v19;
    v22 = (v20 | v19) == 0;

    v6 = v22 && v18;
    if (v21 && v18)
    {
      v23 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
      v6 = [v23 isEqual:v19];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serializedStringFromArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD60] string];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) serializedString];
          if ([v4 length])
          {
            [v4 appendFormat:@", %@", v10];
          }

          else
          {
            [v4 appendString:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)messageRangeFromTokens_v1:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] != 5 && objc_msgSend(v4, "count") != 6)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6488(v4);
    }

    goto LABEL_29;
  }

  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = [v5 integerValue];

  v7 = [v4 objectAtIndexedSubscript:2];
  v8 = [v7 integerValue];

  v9 = [v4 objectAtIndexedSubscript:3];
  v10 = [v9 integerValue];

  v11 = [v4 objectAtIndexedSubscript:4];
  v12 = [v11 longLongValue];

  if ([v4 count] == 6)
  {
    v13 = [v4 objectAtIndexedSubscript:5];
    v14 = [v13 integerValue];
  }

  else
  {
    v14 = 0;
  }

  if (v6 >= 9)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [a1 _stringFromSyndicationType:v6];
      v17 = [v4 componentsJoinedByString:{@", "}];
      v23 = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_error_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_ERROR, "Syndication type is out of range: %@ in tokens: %@", &v23, 0x16u);

LABEL_28:
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v8 < 0 || v10 < 0)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 componentsJoinedByString:{@", "}];
      v23 = 134218498;
      v24 = v8;
      v25 = 2048;
      v26 = v10;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_ERROR, "Message part range is out of range. Location: %ld, Length: %ld, in tokens: %@", &v23, 0x20u);
      goto LABEL_28;
    }

LABEL_29:
    v19 = 0;
    goto LABEL_30;
  }

  if (!v10)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6690(v4);
    }

    goto LABEL_29;
  }

  if (!v12)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C65D0(v4);
    }

    goto LABEL_29;
  }

  v15 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v12];
  if (!v15)
  {
    v16 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6528(v4);
    }

    goto LABEL_28;
  }

  if (v14 >= 3)
  {
    v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [a1 _stringFromSyndicationStatus:v14];
      v22 = [v4 componentsJoinedByString:{@", "}];
      v23 = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      _os_log_error_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_ERROR, "Syndication status is out of range: %@ in tokens: %@", &v23, 0x16u);
    }

    goto LABEL_29;
  }

  v19 = [[IMMessagePartSyndicationRange alloc] initWithSyndicationType:v6 messagePartRange:v8 syndicationStartDate:v10 syndicationStatus:v15 assetDescriptor:v14, 0];
LABEL_30:

  return v19;
}

+ (id)messageRangeFromTokens_v3:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] == 6 || objc_msgSend(v4, "count") == 7)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    v6 = [v5 integerValue];

    v7 = [v4 objectAtIndexedSubscript:2];
    v8 = [v7 integerValue];

    v9 = [v4 objectAtIndexedSubscript:3];
    v10 = [v9 integerValue];

    v11 = [v4 objectAtIndexedSubscript:4];
    v12 = [v11 longLongValue];

    if ([v4 count] == 6 || objc_msgSend(v4, "count") == 7)
    {
      v13 = [v4 objectAtIndexedSubscript:5];
      v14 = [v13 integerValue];
    }

    else
    {
      v14 = 0;
    }

    if ([v4 count] == 7)
    {
      v17 = [v4 objectAtIndexedSubscript:6];
      v15 = [IMMessagePartSyndicationAssetDescriptor descriptorFromSerializedString:v17];
    }

    else
    {
      v15 = 0;
    }

    if (v6 < 9)
    {
      if (v8 < 0 || v10 < 0)
      {
        v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v4 componentsJoinedByString:{@", "}];
          v25 = 134218498;
          v26 = v8;
          v27 = 2048;
          v28 = v10;
          v29 = 2112;
          v30 = v19;
          _os_log_error_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_ERROR, "Message part range is out of range. Location: %ld, Length: %ld, in tokens: %@", &v25, 0x20u);
          goto LABEL_33;
        }
      }

      else
      {
        if (!v10)
        {
          v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C6690(v4);
          }

          goto LABEL_34;
        }

        if (!v12)
        {
          v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C65D0(v4);
          }

          goto LABEL_34;
        }

        v18 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v12];
        if (!v18)
        {
          v19 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C6528(v4);
          }

          goto LABEL_33;
        }

        if (v14 < 3)
        {
          v16 = [[IMMessagePartSyndicationRange alloc] initWithSyndicationType:v6 messagePartRange:v8 syndicationStartDate:v10 syndicationStatus:v18 assetDescriptor:v14, v15];
          goto LABEL_35;
        }

        v21 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = [a1 _stringFromSyndicationStatus:v14];
          v24 = [v4 componentsJoinedByString:{@", "}];
          v25 = 138412546;
          v26 = v23;
          v27 = 2112;
          v28 = v24;
          _os_log_error_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_ERROR, "Syndication status is out of range: %@ in tokens: %@", &v25, 0x16u);
        }
      }
    }

    else
    {
      v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [a1 _stringFromSyndicationType:v6];
        v20 = [v4 componentsJoinedByString:{@", "}];
        v25 = 138412546;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        _os_log_error_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_ERROR, "Syndication type is out of range: %@ in tokens: %@", &v25, 0x16u);

LABEL_33:
      }
    }

LABEL_34:
    v16 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C6724(v4);
  }

  v16 = 0;
LABEL_36:

  return v16;
}

+ (id)deserializeSyndicationRangeFromString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length] > 1)
  {
    v6 = [v5 substringToIndex:1];
    v8 = [v5 substringFromIndex:2];
    v9 = [v8 componentsSeparatedByString:v6];

    if (!v9 || ![v9 count])
    {
      v10 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C6958();
      }

      goto LABEL_13;
    }

    if ([v9 count] == 1)
    {
      v10 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C68F0();
      }

LABEL_13:

      v7 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v12 = [v9 objectAtIndexedSubscript:0];
    v13 = [v12 integerValue];

    if ((v13 - 1) >= 2)
    {
      if (v13 != 3)
      {
        v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C67C4(v5, v13);
        }

LABEL_27:
        v10 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C6844(v5, v9);
        }

        goto LABEL_13;
      }

      v14 = [a1 messageRangeFromTokens_v3:v9];
    }

    else
    {
      v14 = [a1 messageRangeFromTokens_v1:v9];
    }

    v7 = v14;
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  v6 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C69C0();
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)_canBeReplacedByRange:(id)a3
{
  v4 = a3;
  if ([(IMMessagePartSyndicationRange *)self isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
    v7 = [v4 syndicationStartDate];
    v8 = [v6 compare:v7];

    v5 = v8 != 1;
  }

  return v5;
}

+ (id)rangesFromSerializedString:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v17 = 0;
    goto LABEL_26;
  }

  v6 = [v5 componentsSeparatedByString:{@", "}];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v8 = IMLogHandleForCategory("IMMessagepartSyndicationRange");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6AF8();
    }

    goto LABEL_24;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count") - 1}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [a1 deserializeSyndicationRangeFromString:{*(*(&v21 + 1) + 8 * i), v21}];
        if (!v14)
        {
          v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C6A28();
          }

          goto LABEL_24;
        }

        v15 = v14;
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v8 count];
  if (v16 != [v9 count])
  {
    v19 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6A90();
    }

LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

  v8 = v8;
  v17 = v8;
LABEL_25:

LABEL_26:

  return v17;
}

+ (id)unarchiveClasses
{
  if (qword_1EB30B860 != -1)
  {
    sub_1A88C6B60();
  }

  v3 = qword_1EB30B858;

  return v3;
}

+ (id)updateMessagesRanges:(id)a3 withMessagePartSyndicationRanges:(id)a4 didUpdate:(BOOL *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (v8 && [v8 count])
  {
    if (!v7)
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_1A8602044;
    v33 = sub_1A8602214;
    v34 = [v7 mutableCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
    v18 = v9;
    if (v10)
    {
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 messagePartRange];
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 1;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_1A870A0D8;
          v20[3] = &unk_1E782B828;
          v20[8] = v14;
          v20[9] = v15;
          v20[4] = v13;
          v20[5] = &v29;
          v20[6] = &v35;
          v20[7] = &v21;
          [v7 enumerateObjectsUsingBlock:v20];
          if (*(v22 + 24) == 1)
          {
            [v30[5] addObject:v13];
            *(v36 + 24) = 1;
          }

          _Block_object_dispose(&v21, 8);
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v10);
    }

    if (a5)
    {
      *a5 = *(v36 + 24);
    }

    v16 = v30[5];
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
    v9 = v18;
  }

  else
  {
    v7 = v7;
    v16 = v7;
  }

  return v16;
}

+ (id)messagePartSyndicationRangeForRange:(_NSRange)a3 inRangesArray:(id)a4
{
  length = a3.length;
  location = a3.location;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 messagePartRange] == location && v14 == length)
          {
            v16 = v13;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_15:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)findChangesFromRangeArray:(id)a3 comparedToRangeArray:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    if (!v6)
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    if (v6 == v5 || ([v5 isEqualToArray:v6] & 1) != 0)
    {
      v7 = 0;
    }

    else
    {
      v49 = [MEMORY[0x1E695DF70] array];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v45 = v5;
      obj = v5;
      v47 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v47)
      {
        v46 = *v64;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v64 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v63 + 1) + 8 * i);
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v12 = v6;
            v13 = v6;
            v14 = [(IMMessagePartSyndicationRange *)v13 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v60;
LABEL_24:
              v17 = 0;
              while (1)
              {
                if (*v60 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v59 + 1) + 8 * v17);
                v19 = [(IMMessagePartSyndicationRange *)v18 messagePartRange];
                v21 = v20;
                if (v19 == [v11 messagePartRange] && v21 == v22)
                {
                  break;
                }

                if (v15 == ++v17)
                {
                  v15 = [(IMMessagePartSyndicationRange *)v13 countByEnumeratingWithState:&v59 objects:v69 count:16];
                  if (v15)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_33;
                }
              }

              if ([(IMMessagePartSyndicationRange *)v18 isEqual:v11])
              {
                goto LABEL_36;
              }
            }

            else
            {
LABEL_33:

              v24 = [IMMessagePartSyndicationRange alloc];
              v25 = [v11 messagePartRange];
              v27 = v26;
              v28 = [v11 syndicationStartDate];
              v18 = [(IMMessagePartSyndicationRange *)v24 initWithSyndicationType:0 messagePartRange:v25 syndicationStartDate:v27, v28];

              v13 = v18;
            }

            [v49 addObject:v18];
LABEL_36:

            v6 = v12;
          }

          v47 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v47);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v6 = v6;
      v29 = [v6 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v56;
        v48 = v6;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v56 != v31)
            {
              objc_enumerationMutation(v48);
            }

            v33 = *(*(&v55 + 1) + 8 * j);
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v34 = obj;
            v35 = [v34 countByEnumeratingWithState:&v51 objects:v67 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v52;
              while (2)
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v52 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [*(*(&v51 + 1) + 8 * k) messagePartRange];
                  v41 = v40;
                  if (v39 == [v33 messagePartRange] && v41 == v42)
                  {

                    goto LABEL_56;
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v51 objects:v67 count:16];
                if (v36)
                {
                  continue;
                }

                break;
              }
            }

            [v49 addObject:v33];
LABEL_56:
            ;
          }

          v6 = v48;
          v30 = [v48 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v30);
      }

      if ([v49 count])
      {
        v44 = v49;
      }

      else
      {
        v44 = 0;
      }

      v7 = v44;

      v5 = v45;
    }
  }

  else
  {
    if (v6)
    {
      if ([v6 count])
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
  }

  return v7;
}

- (id)syndicationForPartIndex:(unint64_t)a3 asset:(int64_t)a4
{
  v7 = [(IMMessagePartSyndicationRange *)self assetDescriptor];

  if (v7)
  {
    v8 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
    v9 = [v8 syndicationForPartIndex:a3 asset:a4];
  }

  else
  {
    v10 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6B74(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)syndicationRangeForAssetDescriptor:(id)a3 range:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [IMMessagePartSyndicationRange alloc];
  v8 = [v5 syndicationType];
  v9 = [v5 messagePartRange];
  v11 = v10;
  v12 = [v5 syndicationStartDate];
  v13 = [v5 syndicationStatus];

  v14 = [(IMMessagePartSyndicationRange *)v7 initWithSyndicationType:v8 messagePartRange:v9 syndicationStartDate:v11 syndicationStatus:v12 assetDescriptor:v13, v6];

  return v14;
}

+ (id)updateAssetInfoWith:(id)a3 asset:(int64_t)a4 range:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [v7 assetDescriptor];
  v10 = [v9 copy];

  if (v10)
  {
    [v10 updateSyndicationAssetWithInfo:v8 asset:a4];
    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v10 range:v7];
  }

  else
  {
    v12 = [IMMessagePartSyndicationAssetDescriptor alloc];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v17 = v13;
    v18[0] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [(IMMessagePartSyndicationAssetDescriptor *)v12 initWithAssetSyndications:v14];

    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v15 range:v7];
  }

  return v11;
}

+ (id)replaceAssetInfoWith:(id)a3 asset:(int64_t)a4 range:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [v7 assetDescriptor];
  v10 = [v9 copy];

  if (v10)
  {
    [v10 replaceSyndicationAssetsInfoWith:v8 asset:a4];
    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v10 range:v7];
  }

  else
  {
    v12 = [IMMessagePartSyndicationAssetDescriptor alloc];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v17 = v13;
    v18[0] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [(IMMessagePartSyndicationAssetDescriptor *)v12 initWithAssetSyndications:v14];

    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v15 range:v7];
  }

  return v11;
}

+ (id)removeAssetInfoForAsset:(int64_t)a3 range:(id)a4
{
  v5 = a4;
  v6 = [v5 assetDescriptor];
  v7 = [v6 copy];

  if (v7)
  {
    [v7 removeSyndicationAssetsInfoFor:a3];
    v8 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v7 range:v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

+ (id)minStartDateForRanges:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v6)
        {
          v10 = [*(*(&v14 + 1) + 8 * i) syndicationStartDate];
          v11 = [v10 compare:v6];

          if (v11 != -1)
          {
            continue;
          }
        }

        v12 = [v9 syndicationStartDate];

        v6 = v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)maxStartDateForRanges:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v6)
        {
          v10 = [*(*(&v14 + 1) + 8 * i) syndicationStartDate];
          v11 = [v10 compare:v6];

          if (v11 != 1)
          {
            continue;
          }
        }

        v12 = [v9 syndicationStartDate];

        v6 = v12;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_NSRange)messagePartRange
{
  length = self->_messagePartRange.length;
  location = self->_messagePartRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end