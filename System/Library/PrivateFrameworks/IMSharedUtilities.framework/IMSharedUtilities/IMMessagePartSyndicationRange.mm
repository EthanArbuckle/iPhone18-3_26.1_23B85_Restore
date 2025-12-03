@interface IMMessagePartSyndicationRange
+ (id)_stringFromSyndicationStatus:(int64_t)status;
+ (id)_stringFromSyndicationType:(int64_t)type;
+ (id)deserializeSyndicationRangeFromString:(id)string;
+ (id)findChangesFromRangeArray:(id)array comparedToRangeArray:(id)rangeArray;
+ (id)maxStartDateForRanges:(id)ranges;
+ (id)messagePartSyndicationRangeForRange:(_NSRange)range inRangesArray:(id)array;
+ (id)messageRangeFromTokens_v1:(id)tokens_v1;
+ (id)messageRangeFromTokens_v3:(id)tokens_v3;
+ (id)minStartDateForRanges:(id)ranges;
+ (id)rangesFromSerializedString:(id)string;
+ (id)removeAssetInfoForAsset:(int64_t)asset range:(id)range;
+ (id)replaceAssetInfoWith:(id)with asset:(int64_t)asset range:(id)range;
+ (id)serializedStringFromArray:(id)array;
+ (id)syndicationRangeForAssetDescriptor:(id)descriptor range:(id)range;
+ (id)unarchiveClasses;
+ (id)updateAssetInfoWith:(id)with asset:(int64_t)asset range:(id)range;
+ (id)updateMessagesRanges:(id)ranges withMessagePartSyndicationRanges:(id)syndicationRanges didUpdate:(BOOL *)update;
- (BOOL)_canBeReplacedByRange:(id)range;
- (BOOL)isEqual:(id)equal;
- (IMMessagePartSyndicationRange)initWithCoder:(id)coder;
- (IMMessagePartSyndicationRange)initWithSyndicationAction:(id)action;
- (IMMessagePartSyndicationRange)initWithSyndicationType:(int64_t)type messagePartRange:(_NSRange)range syndicationStartDate:(id)date syndicationStatus:(int64_t)status assetDescriptor:(id)descriptor;
- (NSString)serializedString;
- (_NSRange)messagePartRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)syndicationForPartIndex:(unint64_t)index asset:(int64_t)asset;
- (unint64_t)serializedVersion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMessagePartSyndicationRange

- (NSString)serializedString
{
  v26[8] = *MEMORY[0x1E69E9840];
  serializedString = self->_serializedString;
  if (!serializedString)
  {
    assetDescriptor = [(IMMessagePartSyndicationRange *)self assetDescriptor];
    serializedString = [assetDescriptor serializedString];

    if (serializedString && [serializedString length])
    {
      v6 = [serializedString cStringUsingEncoding:4];
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
      syndicationStartDate = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
      v14 = [v12 numberWithLongLong:{objc_msgSend(syndicationStartDate, "__im_nanosecondTimeInterval")}];
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
      syndicationStartDate = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
      v14 = [v20 numberWithLongLong:{objc_msgSend(syndicationStartDate, "__im_nanosecondTimeInterval")}];
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

- (IMMessagePartSyndicationRange)initWithSyndicationType:(int64_t)type messagePartRange:(_NSRange)range syndicationStartDate:(id)date syndicationStatus:(int64_t)status assetDescriptor:(id)descriptor
{
  length = range.length;
  location = range.location;
  dateCopy = date;
  descriptorCopy = descriptor;
  v22.receiver = self;
  v22.super_class = IMMessagePartSyndicationRange;
  v16 = [(IMMessagePartSyndicationRange *)&v22 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_12;
  }

  if (type < 0xA)
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

    v16->_syndicationType = type;
    v16->_messagePartRange.location = location;
    v16->_messagePartRange.length = length;
    objc_storeStrong(&v16->_syndicationStartDate, date);
    v17->_syndicationStatus = status;
    objc_storeStrong(&v17->_assetDescriptor, descriptor);
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

- (IMMessagePartSyndicationRange)initWithSyndicationAction:(id)action
{
  actionCopy = action;
  messagePartSyndicationType = [actionCopy messagePartSyndicationType];
  messagePartRange = [actionCopy messagePartRange];
  v8 = v7;
  syndicationStartDate = [actionCopy syndicationStartDate];
  messagePartSyndicationStatus = [actionCopy messagePartSyndicationStatus];

  v11 = [(IMMessagePartSyndicationRange *)self initWithSyndicationType:messagePartSyndicationType messagePartRange:messagePartRange syndicationStartDate:v8 syndicationStatus:syndicationStartDate assetDescriptor:messagePartSyndicationStatus, 0];
  return v11;
}

- (IMMessagePartSyndicationRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IMMessagePartSyndicationRange;
  v5 = [(IMMessagePartSyndicationRange *)&v13 init];
  if (v5)
  {
    v5->_syndicationType = [coderCopy decodeIntegerForKey:@"syndicationType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messagePartRange"];
    v5->_messagePartRange.location = [v6 rangeValue];
    v5->_messagePartRange.length = v7;

    v5->_serializedVersion = [coderCopy decodeIntegerForKey:@"serializedVersion"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syndicationStartDate"];
    syndicationStartDate = v5->_syndicationStartDate;
    v5->_syndicationStartDate = v8;

    v5->_syndicationStatus = [coderCopy decodeIntegerForKey:@"syndicationStatus"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetDescriptor"];
    assetDescriptor = v5->_assetDescriptor;
    v5->_assetDescriptor = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  syndicationType = self->_syndicationType;
  coderCopy = coder;
  [coderCopy encodeInteger:syndicationType forKey:@"syndicationType"];
  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_messagePartRange.location, self->_messagePartRange.length}];
  [coderCopy encodeObject:v5 forKey:@"messagePartRange"];

  [coderCopy encodeInteger:-[IMMessagePartSyndicationRange serializedVersion](self forKey:{"serializedVersion"), @"serializedVersion"}];
  [coderCopy encodeObject:self->_syndicationStartDate forKey:@"syndicationStartDate"];
  [coderCopy encodeInteger:self->_syndicationStatus forKey:@"syndicationStatus"];
  [coderCopy encodeObject:self->_assetDescriptor forKey:@"assetDescriptor"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  syndicationType = [(IMMessagePartSyndicationRange *)self syndicationType];
  messagePartRange = [(IMMessagePartSyndicationRange *)self messagePartRange];
  v8 = v7;
  syndicationStartDate = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
  syndicationStatus = [(IMMessagePartSyndicationRange *)self syndicationStatus];
  assetDescriptor = [(IMMessagePartSyndicationRange *)self assetDescriptor];
  v12 = [v4 initWithSyndicationType:syndicationType messagePartRange:messagePartRange syndicationStartDate:v8 syndicationStatus:syndicationStartDate assetDescriptor:{syndicationStatus, assetDescriptor}];

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

+ (id)_stringFromSyndicationType:(int64_t)type
{
  if (type > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E782B848[type];
  }
}

+ (id)_stringFromSyndicationStatus:(int64_t)status
{
  if (status > 2)
  {
    return 0;
  }

  else
  {
    return off_1E782B8B0[status];
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
  syndicationStartDate = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
  serializedVersion = [(IMMessagePartSyndicationRange *)self serializedVersion];
  serializedString = [(IMMessagePartSyndicationRange *)self serializedString];
  assetDescriptor = [(IMMessagePartSyndicationRange *)self assetDescriptor];
  v12 = [v3 stringWithFormat:@"%@, syndicationType: %@, syndicationStatus: %@, messagePartRange: %@, syndicationStartDate: %@, version: %ld, serializedString: %@, assetSyndications: %@", v4, v5, v6, v7, syndicationStartDate, serializedVersion, serializedString, assetDescriptor];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    serializedVersion = [equalCopy serializedVersion];
    if (serializedVersion == -[IMMessagePartSyndicationRange serializedVersion](self, "serializedVersion") && (v8 = [equalCopy syndicationType], v8 == -[IMMessagePartSyndicationRange syndicationType](self, "syndicationType")) && (v9 = objc_msgSend(equalCopy, "syndicationStatus"), v9 == -[IMMessagePartSyndicationRange syndicationStatus](self, "syndicationStatus")))
    {
      syndicationStartDate = [equalCopy syndicationStartDate];
      __im_nanosecondTimeInterval = [syndicationStartDate __im_nanosecondTimeInterval];
      syndicationStartDate2 = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
      if (__im_nanosecondTimeInterval == [syndicationStartDate2 __im_nanosecondTimeInterval])
      {
        messagePartRange = [equalCopy messagePartRange];
        v15 = v14;
        v18 = messagePartRange == [(IMMessagePartSyndicationRange *)self messagePartRange]&& v15 == v16;
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

    assetDescriptor = [equalCopy assetDescriptor];
    assetDescriptor2 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
    v21 = assetDescriptor2 | assetDescriptor;
    v22 = (assetDescriptor2 | assetDescriptor) == 0;

    v6 = v22 && v18;
    if (v21 && v18)
    {
      assetDescriptor3 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
      v6 = [assetDescriptor3 isEqual:assetDescriptor];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serializedStringFromArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (arrayCopy)
  {
    string = [MEMORY[0x1E696AD60] string];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = arrayCopy;
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

          serializedString = [*(*(&v12 + 1) + 8 * i) serializedString];
          if ([string length])
          {
            [string appendFormat:@", %@", serializedString];
          }

          else
          {
            [string appendString:serializedString];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

+ (id)messageRangeFromTokens_v1:(id)tokens_v1
{
  v29 = *MEMORY[0x1E69E9840];
  tokens_v1Copy = tokens_v1;
  if ([tokens_v1Copy count] != 5 && objc_msgSend(tokens_v1Copy, "count") != 6)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6488(tokens_v1Copy);
    }

    goto LABEL_29;
  }

  v5 = [tokens_v1Copy objectAtIndexedSubscript:1];
  integerValue = [v5 integerValue];

  v7 = [tokens_v1Copy objectAtIndexedSubscript:2];
  integerValue2 = [v7 integerValue];

  v9 = [tokens_v1Copy objectAtIndexedSubscript:3];
  integerValue3 = [v9 integerValue];

  v11 = [tokens_v1Copy objectAtIndexedSubscript:4];
  longLongValue = [v11 longLongValue];

  if ([tokens_v1Copy count] == 6)
  {
    v13 = [tokens_v1Copy objectAtIndexedSubscript:5];
    integerValue4 = [v13 integerValue];
  }

  else
  {
    integerValue4 = 0;
  }

  if (integerValue >= 9)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [self _stringFromSyndicationType:integerValue];
      v17 = [tokens_v1Copy componentsJoinedByString:{@", "}];
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

  if (integerValue2 < 0 || integerValue3 < 0)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [tokens_v1Copy componentsJoinedByString:{@", "}];
      v23 = 134218498;
      v24 = integerValue2;
      v25 = 2048;
      v26 = integerValue3;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_ERROR, "Message part range is out of range. Location: %ld, Length: %ld, in tokens: %@", &v23, 0x20u);
      goto LABEL_28;
    }

LABEL_29:
    v19 = 0;
    goto LABEL_30;
  }

  if (!integerValue3)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6690(tokens_v1Copy);
    }

    goto LABEL_29;
  }

  if (!longLongValue)
  {
    v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C65D0(tokens_v1Copy);
    }

    goto LABEL_29;
  }

  v15 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:longLongValue];
  if (!v15)
  {
    v16 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6528(tokens_v1Copy);
    }

    goto LABEL_28;
  }

  if (integerValue4 >= 3)
  {
    v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [self _stringFromSyndicationStatus:integerValue4];
      v22 = [tokens_v1Copy componentsJoinedByString:{@", "}];
      v23 = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      _os_log_error_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_ERROR, "Syndication status is out of range: %@ in tokens: %@", &v23, 0x16u);
    }

    goto LABEL_29;
  }

  v19 = [[IMMessagePartSyndicationRange alloc] initWithSyndicationType:integerValue messagePartRange:integerValue2 syndicationStartDate:integerValue3 syndicationStatus:v15 assetDescriptor:integerValue4, 0];
LABEL_30:

  return v19;
}

+ (id)messageRangeFromTokens_v3:(id)tokens_v3
{
  v31 = *MEMORY[0x1E69E9840];
  tokens_v3Copy = tokens_v3;
  if ([tokens_v3Copy count] == 6 || objc_msgSend(tokens_v3Copy, "count") == 7)
  {
    v5 = [tokens_v3Copy objectAtIndexedSubscript:1];
    integerValue = [v5 integerValue];

    v7 = [tokens_v3Copy objectAtIndexedSubscript:2];
    integerValue2 = [v7 integerValue];

    v9 = [tokens_v3Copy objectAtIndexedSubscript:3];
    integerValue3 = [v9 integerValue];

    v11 = [tokens_v3Copy objectAtIndexedSubscript:4];
    longLongValue = [v11 longLongValue];

    if ([tokens_v3Copy count] == 6 || objc_msgSend(tokens_v3Copy, "count") == 7)
    {
      v13 = [tokens_v3Copy objectAtIndexedSubscript:5];
      integerValue4 = [v13 integerValue];
    }

    else
    {
      integerValue4 = 0;
    }

    if ([tokens_v3Copy count] == 7)
    {
      v17 = [tokens_v3Copy objectAtIndexedSubscript:6];
      v15 = [IMMessagePartSyndicationAssetDescriptor descriptorFromSerializedString:v17];
    }

    else
    {
      v15 = 0;
    }

    if (integerValue < 9)
    {
      if (integerValue2 < 0 || integerValue3 < 0)
      {
        v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [tokens_v3Copy componentsJoinedByString:{@", "}];
          v25 = 134218498;
          v26 = integerValue2;
          v27 = 2048;
          v28 = integerValue3;
          v29 = 2112;
          v30 = v19;
          _os_log_error_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_ERROR, "Message part range is out of range. Location: %ld, Length: %ld, in tokens: %@", &v25, 0x20u);
          goto LABEL_33;
        }
      }

      else
      {
        if (!integerValue3)
        {
          v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C6690(tokens_v3Copy);
          }

          goto LABEL_34;
        }

        if (!longLongValue)
        {
          v18 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C65D0(tokens_v3Copy);
          }

          goto LABEL_34;
        }

        v18 = [MEMORY[0x1E695DF00] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:longLongValue];
        if (!v18)
        {
          v19 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C6528(tokens_v3Copy);
          }

          goto LABEL_33;
        }

        if (integerValue4 < 3)
        {
          v16 = [[IMMessagePartSyndicationRange alloc] initWithSyndicationType:integerValue messagePartRange:integerValue2 syndicationStartDate:integerValue3 syndicationStatus:v18 assetDescriptor:integerValue4, v15];
          goto LABEL_35;
        }

        v21 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = [self _stringFromSyndicationStatus:integerValue4];
          v24 = [tokens_v3Copy componentsJoinedByString:{@", "}];
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
        v19 = [self _stringFromSyndicationType:integerValue];
        v20 = [tokens_v3Copy componentsJoinedByString:{@", "}];
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
    sub_1A88C6724(tokens_v3Copy);
  }

  v16 = 0;
LABEL_36:

  return v16;
}

+ (id)deserializeSyndicationRangeFromString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && [stringCopy length] > 1)
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
    integerValue = [v12 integerValue];

    if ((integerValue - 1) >= 2)
    {
      if (integerValue != 3)
      {
        v15 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C67C4(v5, integerValue);
        }

LABEL_27:
        v10 = IMLogHandleForCategory("IMMessagePartSyndicationRange");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C6844(v5, v9);
        }

        goto LABEL_13;
      }

      v14 = [self messageRangeFromTokens_v3:v9];
    }

    else
    {
      v14 = [self messageRangeFromTokens_v1:v9];
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

- (BOOL)_canBeReplacedByRange:(id)range
{
  rangeCopy = range;
  if ([(IMMessagePartSyndicationRange *)self isEqual:rangeCopy])
  {
    v5 = 0;
  }

  else
  {
    syndicationStartDate = [(IMMessagePartSyndicationRange *)self syndicationStartDate];
    syndicationStartDate2 = [rangeCopy syndicationStartDate];
    v8 = [syndicationStartDate compare:syndicationStartDate2];

    v5 = v8 != 1;
  }

  return v5;
}

+ (id)rangesFromSerializedString:(id)string
{
  v26 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = stringCopy;
  if (!stringCopy || ![stringCopy length])
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

        v14 = [self deserializeSyndicationRangeFromString:{*(*(&v21 + 1) + 8 * i), v21}];
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

+ (id)updateMessagesRanges:(id)ranges withMessagePartSyndicationRanges:(id)syndicationRanges didUpdate:(BOOL *)update
{
  v40 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  syndicationRangesCopy = syndicationRanges;
  v9 = syndicationRangesCopy;
  if (update)
  {
    *update = 0;
  }

  if (syndicationRangesCopy && [syndicationRangesCopy count])
  {
    if (!rangesCopy)
    {
      rangesCopy = MEMORY[0x1E695E0F0];
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
    v34 = [rangesCopy mutableCopy];
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
          messagePartRange = [v13 messagePartRange];
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 1;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = sub_1A870A0D8;
          v20[3] = &unk_1E782B828;
          v20[8] = messagePartRange;
          v20[9] = v15;
          v20[4] = v13;
          v20[5] = &v29;
          v20[6] = &v35;
          v20[7] = &v21;
          [rangesCopy enumerateObjectsUsingBlock:v20];
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

    if (update)
    {
      *update = *(v36 + 24);
    }

    v16 = v30[5];
    _Block_object_dispose(&v29, 8);

    _Block_object_dispose(&v35, 8);
    v9 = v18;
  }

  else
  {
    rangesCopy = rangesCopy;
    v16 = rangesCopy;
  }

  return v16;
}

+ (id)messagePartSyndicationRangeForRange:(_NSRange)range inRangesArray:(id)array
{
  length = range.length;
  location = range.location;
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v7 = arrayCopy;
  if (arrayCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = arrayCopy;
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

+ (id)findChangesFromRangeArray:(id)array comparedToRangeArray:(id)rangeArray
{
  v71 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  rangeArrayCopy = rangeArray;
  if (arrayCopy && [arrayCopy count])
  {
    if (!rangeArrayCopy)
    {
      rangeArrayCopy = MEMORY[0x1E695E0F0];
    }

    if (rangeArrayCopy == arrayCopy || ([arrayCopy isEqualToArray:rangeArrayCopy] & 1) != 0)
    {
      v7 = 0;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v45 = arrayCopy;
      obj = arrayCopy;
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
            v12 = rangeArrayCopy;
            v13 = rangeArrayCopy;
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
                messagePartRange = [(IMMessagePartSyndicationRange *)v18 messagePartRange];
                v21 = v20;
                if (messagePartRange == [v11 messagePartRange] && v21 == v22)
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
              messagePartRange2 = [v11 messagePartRange];
              v27 = v26;
              syndicationStartDate = [v11 syndicationStartDate];
              v18 = [(IMMessagePartSyndicationRange *)v24 initWithSyndicationType:0 messagePartRange:messagePartRange2 syndicationStartDate:v27, syndicationStartDate];

              v13 = v18;
            }

            [array addObject:v18];
LABEL_36:

            rangeArrayCopy = v12;
          }

          v47 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v47);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      rangeArrayCopy = rangeArrayCopy;
      v29 = [rangeArrayCopy countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v56;
        v48 = rangeArrayCopy;
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

                  messagePartRange3 = [*(*(&v51 + 1) + 8 * k) messagePartRange];
                  v41 = v40;
                  if (messagePartRange3 == [v33 messagePartRange] && v41 == v42)
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

            [array addObject:v33];
LABEL_56:
            ;
          }

          rangeArrayCopy = v48;
          v30 = [v48 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v30);
      }

      if ([array count])
      {
        v44 = array;
      }

      else
      {
        v44 = 0;
      }

      v7 = v44;

      arrayCopy = v45;
    }
  }

  else
  {
    if (rangeArrayCopy)
    {
      if ([rangeArrayCopy count])
      {
        v8 = rangeArrayCopy;
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

- (id)syndicationForPartIndex:(unint64_t)index asset:(int64_t)asset
{
  assetDescriptor = [(IMMessagePartSyndicationRange *)self assetDescriptor];

  if (assetDescriptor)
  {
    assetDescriptor2 = [(IMMessagePartSyndicationRange *)self assetDescriptor];
    v9 = [assetDescriptor2 syndicationForPartIndex:index asset:asset];
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

+ (id)syndicationRangeForAssetDescriptor:(id)descriptor range:(id)range
{
  rangeCopy = range;
  descriptorCopy = descriptor;
  v7 = [IMMessagePartSyndicationRange alloc];
  syndicationType = [rangeCopy syndicationType];
  messagePartRange = [rangeCopy messagePartRange];
  v11 = v10;
  syndicationStartDate = [rangeCopy syndicationStartDate];
  syndicationStatus = [rangeCopy syndicationStatus];

  descriptorCopy = [(IMMessagePartSyndicationRange *)v7 initWithSyndicationType:syndicationType messagePartRange:messagePartRange syndicationStartDate:v11 syndicationStatus:syndicationStartDate assetDescriptor:syndicationStatus, descriptorCopy];

  return descriptorCopy;
}

+ (id)updateAssetInfoWith:(id)with asset:(int64_t)asset range:(id)range
{
  v18[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  withCopy = with;
  assetDescriptor = [rangeCopy assetDescriptor];
  v10 = [assetDescriptor copy];

  if (v10)
  {
    [v10 updateSyndicationAssetWithInfo:withCopy asset:asset];
    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v10 range:rangeCopy];
  }

  else
  {
    v12 = [IMMessagePartSyndicationAssetDescriptor alloc];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
    v17 = v13;
    v18[0] = withCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [(IMMessagePartSyndicationAssetDescriptor *)v12 initWithAssetSyndications:v14];

    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v15 range:rangeCopy];
  }

  return v11;
}

+ (id)replaceAssetInfoWith:(id)with asset:(int64_t)asset range:(id)range
{
  v18[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  withCopy = with;
  assetDescriptor = [rangeCopy assetDescriptor];
  v10 = [assetDescriptor copy];

  if (v10)
  {
    [v10 replaceSyndicationAssetsInfoWith:withCopy asset:asset];
    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v10 range:rangeCopy];
  }

  else
  {
    v12 = [IMMessagePartSyndicationAssetDescriptor alloc];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:asset];
    v17 = v13;
    v18[0] = withCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [(IMMessagePartSyndicationAssetDescriptor *)v12 initWithAssetSyndications:v14];

    v11 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v15 range:rangeCopy];
  }

  return v11;
}

+ (id)removeAssetInfoForAsset:(int64_t)asset range:(id)range
{
  rangeCopy = range;
  assetDescriptor = [rangeCopy assetDescriptor];
  v7 = [assetDescriptor copy];

  if (v7)
  {
    [v7 removeSyndicationAssetsInfoFor:asset];
    v8 = [IMMessagePartSyndicationRange syndicationRangeForAssetDescriptor:v7 range:rangeCopy];
  }

  else
  {
    v8 = rangeCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)minStartDateForRanges:(id)ranges
{
  v19 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [rangesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(rangesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v6)
        {
          syndicationStartDate = [*(*(&v14 + 1) + 8 * i) syndicationStartDate];
          v11 = [syndicationStartDate compare:v6];

          if (v11 != -1)
          {
            continue;
          }
        }

        syndicationStartDate2 = [v9 syndicationStartDate];

        v6 = syndicationStartDate2;
      }

      v5 = [rangesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)maxStartDateForRanges:(id)ranges
{
  v19 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [rangesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(rangesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v6)
        {
          syndicationStartDate = [*(*(&v14 + 1) + 8 * i) syndicationStartDate];
          v11 = [syndicationStartDate compare:v6];

          if (v11 != 1)
          {
            continue;
          }
        }

        syndicationStartDate2 = [v9 syndicationStartDate];

        v6 = syndicationStartDate2;
      }

      v5 = [rangesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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