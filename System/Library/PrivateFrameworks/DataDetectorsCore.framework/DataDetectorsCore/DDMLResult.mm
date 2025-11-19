@interface DDMLResult
- (BOOL)isEqual:(id)a3;
- (DDMLResult)initWithText:(id)a3 resultRange:(_NSRange)a4 confidence:(double)a5 resultType:(int)a6;
- (_NSRange)range;
- (__DDResult)ddResultFromQuery:(__DDScanQuery *)a3;
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

- (__DDResult)ddResultFromQuery:(__DDScanQuery *)a3
{
  if ([(DDMLResult *)self classification])
  {
    if ([(DDMLResult *)self classification]== 1)
    {
      v5 = [(DDMLResult *)self range];
      v7 = v6;
      var1 = a3->var1;
      var3 = a3->var3;
      OffsetOfAbsolutePosition = DDScanQueryGetOffsetOfAbsolutePosition(var1, var3, v5);
      v11 = DDScanQueryGetOffsetOfAbsolutePosition(var1, var3, v5 + v7);
      v12 = DDResultCreate(@"Location", OffsetOfAbsolutePosition & 0xFFFFFFFFFFFF0000, v11 & 0xFFFFFFFFFFFF0000);
      if (v12)
      {
        v13 = v12;
        v14 = [(DDMLResult *)self matchedString];
        DDResultSetMatchedString(v13, v14);

        goto LABEL_8;
      }
    }
  }

  else
  {
    v15 = [(DDMLResult *)self range];
    v17 = v16;
    v18 = a3->var1;
    v19 = a3->var3;
    v20 = DDScanQueryGetOffsetOfAbsolutePosition(v18, v19, v15);
    v21 = DDScanQueryGetOffsetOfAbsolutePosition(v18, v19, v15 + v17);
    v22 = DDResultCreate(@"FullAddress", v20 & 0xFFFFFFFFFFFF0000, v21 & 0xFFFFFFFFFFFF0000);
    if (v22)
    {
      v13 = v22;
      v23 = [(DDMLResult *)self matchedString];
      DDResultSetMatchedString(v13, v23);

      v13->var2.var0 = v15;
      v13->var2.var1 = v17;
      v24 = DDResultCreate(@"Street", v20 & 0xFFFFFFFFFFFF0000, v21 & 0xFFFFFFFFFFFF0000);
      if (!v24)
      {
        v27 = 0;
        goto LABEL_11;
      }

      v25 = v24;
      v26 = [(DDMLResult *)self matchedString];
      DDResultSetMatchedString(v25, v26);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 range];
    v7 = v6;
    [(DDMLResult *)self range];
    if (v7 != v8)
    {
      goto LABEL_8;
    }

    v9 = [v5 range];
    if (v9 != [(DDMLResult *)self range])
    {
      goto LABEL_8;
    }

    v10 = [v5 matchedString];
    v11 = [(DDMLResult *)self matchedString];
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = [v5 classification];
    if (v13 == [(DDMLResult *)self classification])
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
  v4 = [(DDMLResult *)self range];
  [(DDMLResult *)self range];
  v6 = v5;
  v7 = [(DDMLResult *)self classification];
  if (v7 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E8001DD8[v7];
  }

  v9 = v8;
  v10 = [(DDMLResult *)self matchedString];
  v11 = [v3 stringWithFormat:@"<DDMLResult:%p (%ld, %ld) %@ %@>", self, v4, v6, v9, v10];

  return v11;
}

- (DDMLResult)initWithText:(id)a3 resultRange:(_NSRange)a4 confidence:(double)a5 resultType:(int)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v17.receiver = self;
  v17.super_class = DDMLResult;
  v12 = [(DDMLResult *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_classification = a6;
    v12->_range.location = location;
    v12->_range.length = length;
    v12->_confidence = a5;
    v14 = [v11 substringWithRange:{location, length}];
    matchedString = v13->_matchedString;
    v13->_matchedString = v14;
  }

  return v13;
}

@end