@interface BRLTEditString
- (BRLTEditString)initWithString:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 token:(int64_t)a6 suggestion:(_NSRange)a7 textFormattingRanges:(id)a8;
- (BRLTEditString)initWithUnderlyingObject:(id)a3;
- (_NSRange)contiguousBrailleRange;
- (_NSRange)focus;
- (_NSRange)selection;
- (_NSRange)suggestion;
- (id)appending:(id)a3;
- (int64_t)tokenForLocation:(int64_t)a3;
@end

@implementation BRLTEditString

- (BRLTEditString)initWithString:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 token:(int64_t)a6 suggestion:(_NSRange)a7 textFormattingRanges:(id)a8
{
  length = a5.length;
  location = a5.location;
  v11 = a4.length;
  v12 = a4.location;
  v15 = a8;
  v16 = a3;
  v17 = BRLTJRangeForUnicharRange(v16, v12, v11);
  v19 = v18;
  v20 = BRLTJRangeForUnicharRange(v16, location, length);
  v22 = [[BRLTEditStringInternal alloc] initWithString:v16 NSSelection:v17 NSFocus:v19 token:v20 NSSuggestion:v21 textFormattingRanges:a6, a7.location, a7.length, v15];

  v23 = [(BRLTEditString *)self initWithUnderlyingObject:v22];
  return v23;
}

- (BRLTEditString)initWithUnderlyingObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRLTEditString;
  v6 = [(BRLTEditString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, a3);
  }

  return v7;
}

- (_NSRange)selection
{
  v3 = [(BRLTEditStringInternal *)self->_underlyingObject string];
  v4 = [(BRLTEditStringInternal *)self->_underlyingObject NSSelection];
  v6 = BRLTJUnicharRangeForRange(v3, v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)focus
{
  v3 = [(BRLTEditStringInternal *)self->_underlyingObject string];
  v4 = [(BRLTEditStringInternal *)self->_underlyingObject NSFocus];
  v6 = BRLTJUnicharRangeForRange(v3, v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)suggestion
{
  v3 = [(BRLTEditStringInternal *)self->_underlyingObject string];
  v4 = [(BRLTEditStringInternal *)self->_underlyingObject NSSuggestion];
  v6 = BRLTJUnicharRangeForRange(v3, v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)contiguousBrailleRange
{
  v3 = [(BRLTEditStringInternal *)self->_underlyingObject string];
  v4 = [(BRLTEditStringInternal *)self->_underlyingObject NSContiguousBrailleRange];
  v6 = BRLTJUnicharRangeForRange(v3, v4, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)appending:(id)a3
{
  v4 = a3;
  v5 = [BRLTEditString alloc];
  underlyingObject = self->_underlyingObject;
  v7 = [v4 underlyingObject];

  v8 = [(BRLTEditStringInternal *)underlyingObject appending:v7];
  v9 = [(BRLTEditString *)v5 initWithUnderlyingObject:v8];

  return v9;
}

- (int64_t)tokenForLocation:(int64_t)a3
{
  underlyingObject = self->_underlyingObject;
  v5 = [(BRLTEditStringInternal *)underlyingObject string];
  v6 = [(BRLTEditStringInternal *)underlyingObject tokenForLocation:BRLTJIndexForUnicharIndex(v5, a3)];

  return v6;
}

@end