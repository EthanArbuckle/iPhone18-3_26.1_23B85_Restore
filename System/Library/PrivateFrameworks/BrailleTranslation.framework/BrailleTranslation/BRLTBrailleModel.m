@interface BRLTBrailleModel
+ (id)sharedModel;
- (BRLTBrailleModel)initWithUnderlyingObject:(id)a3;
- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(int64_t)a3;
- (_NSRange)uiDisplayRange;
- (_NSRange)uiSelection;
- (id)displayedBraille;
- (id)displayedScript;
- (int64_t)uiFocusedLineIndex;
- (void)setAlert:(id)a3;
- (void)setScript:(id)a3;
- (void)setTerminalOutput:(id)a3;
@end

@implementation BRLTBrailleModel

- (BRLTBrailleModel)initWithUnderlyingObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRLTBrailleModel;
  v6 = [(BRLTBrailleModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, a3);
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
  v2 = [(BRLTBrailleModelInternal *)self->_underlyingObject nsUISelection];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)uiDisplayRange
{
  v2 = [(BRLTBrailleModelInternal *)self->_underlyingObject uiDisplayRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (int64_t)uiFocusedLineIndex
{
  v3 = [(BRLTBrailleModel *)self uiBraille];
  v4 = [(BRLTBrailleModel *)self uiDisplayRange];
  v5 = 0;
  if ([v3 length] && v4 >= 1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ([v3 characterAtIndex:v6 - 1] == 10)
      {
        ++v5;
      }

      if (v6 >= [v3 length])
      {
        break;
      }
    }

    while (v6++ < v4);
  }

  return v5;
}

- (id)displayedScript
{
  v3 = [BRLTEditString alloc];
  v4 = [(BRLTBrailleModelInternal *)self->_underlyingObject displayedScript];
  v5 = [(BRLTEditString *)v3 initWithUnderlyingObject:v4];

  return v5;
}

- (id)displayedBraille
{
  v3 = [BRLTEditString alloc];
  v4 = [(BRLTBrailleModelInternal *)self->_underlyingObject displayedBraille];
  v5 = [(BRLTEditString *)v3 initWithUnderlyingObject:v4];

  return v5;
}

- (_NSRange)scriptRangeOfBrailleCellRepresentingCharacterAtScriptIndex:(int64_t)a3
{
  v3 = [(BRLTBrailleModelInternal *)self->_underlyingObject scriptRangeOfBrailleCellRepresentingCharacterAt:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)setScript:(id)a3
{
  underlyingObject = self->_underlyingObject;
  v4 = [a3 underlyingObject];
  [(BRLTBrailleModelInternal *)underlyingObject setScript:v4];
}

- (void)setAlert:(id)a3
{
  underlyingObject = self->_underlyingObject;
  v4 = [a3 underlyingObject];
  [(BRLTBrailleModelInternal *)underlyingObject setAlert:v4];
}

- (void)setTerminalOutput:(id)a3
{
  underlyingObject = self->_underlyingObject;
  v4 = [a3 underlyingObject];
  [(BRLTBrailleModelInternal *)underlyingObject setTerminalOutput:v4];
}

@end