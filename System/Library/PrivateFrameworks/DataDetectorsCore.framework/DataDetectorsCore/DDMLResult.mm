@interface DDMLResult
- (BOOL)isEqual:(id)equal;
- (DDMLResult)initWithText:(id)text resultRange:(_NSRange)range confidence:(double)confidence resultType:(int)type;
- (_NSRange)range;
- (__DDResult)ddResultFromQuery:(__DDScanQuery *)query;
- (id)description;
@end

@implementation DDMLResult

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (__DDResult)ddResultFromQuery:(__DDScanQuery *)query
{
  if ([(DDMLResult *)self classification])
  {
    if ([(DDMLResult *)self classification]== 1)
    {
      range = [(DDMLResult *)self range];
      v7 = v6;
      var1 = query->var1;
      var3 = query->var3;
      OffsetOfAbsolutePosition = DDScanQueryGetOffsetOfAbsolutePosition(var1, var3, range);
      v11 = DDScanQueryGetOffsetOfAbsolutePosition(var1, var3, range + v7);
      v12 = DDResultCreate(@"Location", OffsetOfAbsolutePosition & 0xFFFFFFFFFFFF0000, v11 & 0xFFFFFFFFFFFF0000);
      if (v12)
      {
        v13 = v12;
        matchedString = [(DDMLResult *)self matchedString];
        DDResultSetMatchedString(v13, matchedString);

        goto LABEL_8;
      }
    }
  }

  else
  {
    range2 = [(DDMLResult *)self range];
    v17 = v16;
    v18 = query->var1;
    v19 = query->var3;
    v20 = DDScanQueryGetOffsetOfAbsolutePosition(v18, v19, range2);
    v21 = DDScanQueryGetOffsetOfAbsolutePosition(v18, v19, range2 + v17);
    v22 = DDResultCreate(@"FullAddress", v20 & 0xFFFFFFFFFFFF0000, v21 & 0xFFFFFFFFFFFF0000);
    if (v22)
    {
      v13 = v22;
      matchedString2 = [(DDMLResult *)self matchedString];
      DDResultSetMatchedString(v13, matchedString2);

      v13->var2.var0 = range2;
      v13->var2.var1 = v17;
      v24 = DDResultCreate(@"Street", v20 & 0xFFFFFFFFFFFF0000, v21 & 0xFFFFFFFFFFFF0000);
      if (!v24)
      {
        v27 = 0;
        goto LABEL_11;
      }

      v25 = v24;
      matchedString3 = [(DDMLResult *)self matchedString];
      DDResultSetMatchedString(v25, matchedString3);

      DDResultAddSubresult(v13, v25);
      CFRelease(v25);
LABEL_8:
      v27 = v13;
LABEL_11:
      CFAutorelease(v13);
      return v27;
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [v5 range];
    v7 = v6;
    [(DDMLResult *)self range];
    if (v7 != v8)
    {
      goto LABEL_8;
    }

    range = [v5 range];
    if (range != [(DDMLResult *)self range])
    {
      goto LABEL_8;
    }

    matchedString = [v5 matchedString];
    matchedString2 = [(DDMLResult *)self matchedString];
    v12 = [matchedString isEqualToString:matchedString2];

    if (!v12)
    {
      goto LABEL_8;
    }

    classification = [v5 classification];
    if (classification == [(DDMLResult *)self classification])
    {
      [v5 confidence];
      v15 = v14;
      [(DDMLResult *)self confidence];
      v17 = v15 == v16;
    }

    else
    {
LABEL_8:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  range = [(DDMLResult *)self range];
  [(DDMLResult *)self range];
  v6 = v5;
  classification = [(DDMLResult *)self classification];
  if (classification > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E8001DD8[classification];
  }

  v9 = v8;
  matchedString = [(DDMLResult *)self matchedString];
  v11 = [v3 stringWithFormat:@"<DDMLResult:%p (%ld, %ld) %@ %@>", self, range, v6, v9, matchedString];

  return v11;
}

- (DDMLResult)initWithText:(id)text resultRange:(_NSRange)range confidence:(double)confidence resultType:(int)type
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = DDMLResult;
  v12 = [(DDMLResult *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_classification = type;
    v12->_range.location = location;
    v12->_range.length = length;
    v12->_confidence = confidence;
    v14 = [textCopy substringWithRange:{location, length}];
    matchedString = v13->_matchedString;
    v13->_matchedString = v14;
  }

  return v13;
}

@end