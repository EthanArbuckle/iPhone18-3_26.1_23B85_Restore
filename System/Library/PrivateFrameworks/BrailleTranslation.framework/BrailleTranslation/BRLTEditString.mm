@interface BRLTEditString
- (BRLTEditString)initWithString:(id)string selection:(_NSRange)selection focus:(_NSRange)focus token:(int64_t)token suggestion:(_NSRange)suggestion textFormattingRanges:(id)ranges;
- (BRLTEditString)initWithUnderlyingObject:(id)object;
- (_NSRange)contiguousBrailleRange;
- (_NSRange)focus;
- (_NSRange)selection;
- (_NSRange)suggestion;
- (id)appending:(id)appending;
- (int64_t)tokenForLocation:(int64_t)location;
@end

@implementation BRLTEditString

- (BRLTEditString)initWithString:(id)string selection:(_NSRange)selection focus:(_NSRange)focus token:(int64_t)token suggestion:(_NSRange)suggestion textFormattingRanges:(id)ranges
{
  length = focus.length;
  location = focus.location;
  v11 = selection.length;
  v12 = selection.location;
  rangesCopy = ranges;
  stringCopy = string;
  v17 = BRLTJRangeForUnicharRange(stringCopy, v12, v11);
  v19 = v18;
  v20 = BRLTJRangeForUnicharRange(stringCopy, location, length);
  rangesCopy = [[BRLTEditStringInternal alloc] initWithString:stringCopy NSSelection:v17 NSFocus:v19 token:v20 NSSuggestion:v21 textFormattingRanges:token, suggestion.location, suggestion.length, rangesCopy];

  v23 = [(BRLTEditString *)self initWithUnderlyingObject:rangesCopy];
  return v23;
}

- (BRLTEditString)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = BRLTEditString;
  v6 = [(BRLTEditString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, object);
  }

  return v7;
}

- (_NSRange)selection
{
  string = [(BRLTEditStringInternal *)self->_underlyingObject string];
  nSSelection = [(BRLTEditStringInternal *)self->_underlyingObject NSSelection];
  v6 = BRLTJUnicharRangeForRange(string, nSSelection, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)focus
{
  string = [(BRLTEditStringInternal *)self->_underlyingObject string];
  nSFocus = [(BRLTEditStringInternal *)self->_underlyingObject NSFocus];
  v6 = BRLTJUnicharRangeForRange(string, nSFocus, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)suggestion
{
  string = [(BRLTEditStringInternal *)self->_underlyingObject string];
  nSSuggestion = [(BRLTEditStringInternal *)self->_underlyingObject NSSuggestion];
  v6 = BRLTJUnicharRangeForRange(string, nSSuggestion, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (_NSRange)contiguousBrailleRange
{
  string = [(BRLTEditStringInternal *)self->_underlyingObject string];
  nSContiguousBrailleRange = [(BRLTEditStringInternal *)self->_underlyingObject NSContiguousBrailleRange];
  v6 = BRLTJUnicharRangeForRange(string, nSContiguousBrailleRange, v5);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)appending:(id)appending
{
  appendingCopy = appending;
  v5 = [BRLTEditString alloc];
  underlyingObject = self->_underlyingObject;
  underlyingObject = [appendingCopy underlyingObject];

  v8 = [(BRLTEditStringInternal *)underlyingObject appending:underlyingObject];
  v9 = [(BRLTEditString *)v5 initWithUnderlyingObject:v8];

  return v9;
}

- (int64_t)tokenForLocation:(int64_t)location
{
  underlyingObject = self->_underlyingObject;
  string = [(BRLTEditStringInternal *)underlyingObject string];
  v6 = [(BRLTEditStringInternal *)underlyingObject tokenForLocation:BRLTJIndexForUnicharIndex(string, location)];

  return v6;
}

@end