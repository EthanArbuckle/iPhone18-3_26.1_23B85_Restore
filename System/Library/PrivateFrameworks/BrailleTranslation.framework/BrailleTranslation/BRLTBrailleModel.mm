@interface BRLTBrailleModel
+ (id)sharedModel;
- (BRLTBrailleModel)initWithUnderlyingObject:(id)object;
- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(int64_t)index;
- (_NSRange)uiDisplayRange;
- (_NSRange)uiSelection;
- (id)displayedBraille;
- (id)displayedScript;
- (int64_t)uiFocusedLineIndex;
- (void)setAlert:(id)alert;
- (void)setScript:(id)script;
- (void)setTerminalOutput:(id)output;
@end

@implementation BRLTBrailleModel

- (BRLTBrailleModel)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = BRLTBrailleModel;
  v6 = [(BRLTBrailleModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, object);
  }

  return v7;
}

+ (id)sharedModel
{
  v2 = [BRLTBrailleModel alloc];
  v3 = +[BRLTBrailleModelInternal shared];
  v4 = [(BRLTBrailleModel *)v2 initWithUnderlyingObject:v3];

  return v4;
}

- (_NSRange)uiSelection
{
  nsUISelection = [(BRLTBrailleModelInternal *)self->_underlyingObject nsUISelection];
  result.length = v3;
  result.location = nsUISelection;
  return result;
}

- (_NSRange)uiDisplayRange
{
  uiDisplayRange = [(BRLTBrailleModelInternal *)self->_underlyingObject uiDisplayRange];
  result.length = v3;
  result.location = uiDisplayRange;
  return result;
}

- (int64_t)uiFocusedLineIndex
{
  uiBraille = [(BRLTBrailleModel *)self uiBraille];
  uiDisplayRange = [(BRLTBrailleModel *)self uiDisplayRange];
  v5 = 0;
  if ([uiBraille length] && uiDisplayRange >= 1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ([uiBraille characterAtIndex:v6 - 1] == 10)
      {
        ++v5;
      }

      if (v6 >= [uiBraille length])
      {
        break;
      }
    }

    while (v6++ < uiDisplayRange);
  }

  return v5;
}

- (id)displayedScript
{
  v3 = [BRLTEditString alloc];
  displayedScript = [(BRLTBrailleModelInternal *)self->_underlyingObject displayedScript];
  v5 = [(BRLTEditString *)v3 initWithUnderlyingObject:displayedScript];

  return v5;
}

- (id)displayedBraille
{
  v3 = [BRLTEditString alloc];
  displayedBraille = [(BRLTBrailleModelInternal *)self->_underlyingObject displayedBraille];
  v5 = [(BRLTEditString *)v3 initWithUnderlyingObject:displayedBraille];

  return v5;
}

- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(int64_t)index
{
  v3 = [(BRLTBrailleModelInternal *)self->_underlyingObject scriptRangeOfBrailleCellRepresentingCharacterAt:index];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)setScript:(id)script
{
  underlyingObject = self->_underlyingObject;
  underlyingObject = [script underlyingObject];
  [(BRLTBrailleModelInternal *)underlyingObject setScript:underlyingObject];
}

- (void)setAlert:(id)alert
{
  underlyingObject = self->_underlyingObject;
  underlyingObject = [alert underlyingObject];
  [(BRLTBrailleModelInternal *)underlyingObject setAlert:underlyingObject];
}

- (void)setTerminalOutput:(id)output
{
  underlyingObject = self->_underlyingObject;
  underlyingObject = [output underlyingObject];
  [(BRLTBrailleModelInternal *)underlyingObject setTerminalOutput:underlyingObject];
}

@end