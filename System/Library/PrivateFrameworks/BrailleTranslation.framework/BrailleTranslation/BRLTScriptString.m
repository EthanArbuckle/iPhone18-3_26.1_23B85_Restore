@interface BRLTScriptString
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScriptString:(id)a3;
- (BRLTScriptString)initWithString:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 token:(unint64_t)a6;
- (_NSRange)_backwardEditingAtomForCursorLocation:(unint64_t)a3 isBreak:(BOOL *)a4;
- (_NSRange)_backwardEditingAtomForSelection:(_NSRange)a3 isBreak:(BOOL *)a4;
- (_NSRange)backwardEditingAtom;
- (_NSRange)deleteMergeAtom;
- (_NSRange)focus;
- (_NSRange)forwardEditingAtom;
- (_NSRange)forwardEditingAtomForCursorLocation:(unint64_t)a3;
- (_NSRange)selection;
- (_NSRange)suggestionRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addString:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 token:(unint64_t)a6;
@end

@implementation BRLTScriptString

- (BRLTScriptString)initWithString:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 token:(unint64_t)a6
{
  length = a5.length;
  location = a5.location;
  v9 = a4.length;
  v10 = a4.location;
  v12 = a3;
  v22.receiver = self;
  v22.super_class = BRLTScriptString;
  v13 = [(BRLTScriptString *)&v22 init];
  v14 = [v12 copy];
  string = v13->_string;
  v13->_string = v14;

  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v10;
    if (v10 > [v12 length])
    {
      v16 = [v12 length];
    }

    if (v16 + v9 > [v12 length])
    {
      v9 = [v12 length] - v16;
    }
  }

  v13->_selection.location = v16;
  v13->_selection.length = v9;
  v13->_focus.location = location;
  v13->_focus.length = length;
  v13->_suggestionRange = xmmword_241E38B50;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  tokenRanges = v13->_tokenRanges;
  v13->_tokenRanges = v17;

  v19 = v13->_tokenRanges;
  v20 = [[BRLTTokenRange alloc] initWithRange:0 token:[(NSString *)v13->_string length], a6];
  [(NSMutableArray *)v19 addObject:v20];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[BRLTScriptString alloc] initWithString:&stru_2853FD1A8 selection:0x7FFFFFFFFFFFFFFFLL, 0];
  v5 = [(NSString *)self->_string copy];
  string = v4->_string;
  v4->_string = v5;

  v4->_selection = self->_selection;
  v4->_focus = self->_focus;
  v4->_suggestionRange = self->_suggestionRange;
  v7 = [(NSMutableArray *)self->_tokenRanges mutableCopy];
  tokenRanges = v4->_tokenRanges;
  v4->_tokenRanges = v7;

  v9 = [(BRLTTextFormattingRanges *)self->_textFormattingRanges copy];
  textFormattingRanges = v4->_textFormattingRanges;
  v4->_textFormattingRanges = v9;

  return v4;
}

- (void)addString:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 token:(unint64_t)a6
{
  length = a5.length;
  location = a5.location;
  v9 = a4.length;
  v10 = a4.location;
  v16 = a3;
  tokenRanges = self->_tokenRanges;
  v13 = -[BRLTTokenRange initWithRange:token:]([BRLTTokenRange alloc], "initWithRange:token:", -[NSString length](self->_string, "length"), [v16 length], a6);
  [(NSMutableArray *)tokenRanges addObject:v13];

  if (location != 0x7FFFFFFFFFFFFFFFLL && length)
  {
    self->_focus.location = [(NSString *)self->_string length]+ location;
    self->_focus.length = length;
  }

  v14 = [(NSString *)self->_string stringByAppendingString:v16];
  string = self->_string;
  self->_string = v14;

  [(BRLTScriptString *)self _addSelectionRange:v10, v9];
}

- (BOOL)isEqualToScriptString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_18:
    LOBYTE(v13) = 1;
    goto LABEL_19;
  }

  if (self->_selection.location == v4[4] && self->_selection.length == v4[5] && self->_suggestionRange.location == v4[8] && self->_suggestionRange.length == v4[9])
  {
    v8 = [v4 string];
    v9 = [v8 isEqualToString:self->_string];

    if (v9)
    {
      v10 = [v5 textFormattingRanges];
      v11 = v10;
      if (v10 == self->_textFormattingRanges)
      {
      }

      else
      {
        v12 = [v5 textFormattingRanges];
        v13 = [v12 isEqual:self->_textFormattingRanges];

        if (!v13)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_18;
    }
  }

  LOBYTE(v13) = 0;
LABEL_19:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRLTScriptString *)self isEqualToScriptString:v4];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRLTScriptString;
  v4 = [(BRLTScriptString *)&v8 description];
  v5 = [(NSString *)self->_string description];
  v6 = [v3 stringWithFormat:@"%@: string<%@>, range<%ld, %ld>", v4, v5, self->_selection.location, self->_selection.length];

  return v6;
}

- (_NSRange)_backwardEditingAtomForSelection:(_NSRange)a3 isBreak:(BOOL *)a4
{
  v6.location = [(BRLTScriptString *)self _backwardEditingAtomForCursorLocation:a3.location isBreak:a4];
  v6.length = v5;
  location = self->_selection.location;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      length = self->_selection.length;
      if (length | location)
      {
        v8 = self->_selection.location;
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (length | location)
      {
        v6.length = self->_selection.length;
      }
    }
  }

  else
  {
    v8 = v6.location;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = NSUnionRange(self->_selection, v6);
      v8 = v10.location;
      v6.length = v10.length;
    }
  }

  v11 = v6.length;
  result.length = v11;
  result.location = v8;
  return result;
}

- (_NSRange)_backwardEditingAtomForCursorLocation:(unint64_t)a3 isBreak:(BOOL *)a4
{
  v5 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = 0;
  if (a3)
  {
    v8 = 0;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v10 = [(NSString *)self->_string length];
      v11 = [(NSString *)self->_string substringFromIndex:v5];
      v12 = [v11 rangeOfCharacterFromSet:v9];
      v13 = [(NSString *)self->_string substringToIndex:v5];
      v14 = [v13 rangeOfCharacterFromSet:v9 options:4];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v14 + v15;
        if (v14 + v15 == [v13 length])
        {
          v7 = v5 - 1;
          if (a4)
          {
            *a4 = 1;
          }

          goto LABEL_14;
        }
      }

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = v10;
      }

      else
      {
        v5 += v12;
      }

LABEL_14:
      v8 = v5 - v7;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = v7;
  v17 = v8;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)deleteMergeAtom
{
  location = self->_selection.location;
  if (location >= 2 && ((v4 = self->_selection.length, [(BRLTScriptString *)self backwardEditingAtom], v5 > 1) || ([(BRLTScriptString *)self forwardEditingAtom], v6)) && (v14 = 0, v7 = [(BRLTScriptString *)self _backwardEditingAtomForSelection:location - 1 isBreak:v4, &v14], v14 != 1))
  {
    v11 = v7;
    v12 = v8;
    v15.location = [(BRLTScriptString *)self forwardEditingAtom];
    v17.location = v11;
    v17.length = v12;
    v13 = NSUnionRange(v15, v17);
    length = v13.length;
    v9 = v13.location;
  }

  else
  {
    v9 = [(BRLTScriptString *)self backwardEditingAtom];
  }

  result.length = length;
  result.location = v9;
  return result;
}

- (_NSRange)backwardEditingAtom
{
  v2 = [(BRLTScriptString *)self _backwardEditingAtomForSelection:self->_selection.location isBreak:self->_selection.length, 0];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)forwardEditingAtom
{
  selection.location = [(BRLTScriptString *)self forwardEditingAtomForCursorLocation:self->_selection.location];
  selection.length = v4.length;
  v4.location = self->_selection.location;
  if (selection.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    selection.location = 0x7FFFFFFFFFFFFFFFLL;
    if (v4.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      selection = self->_selection;
    }
  }

  else if (v4.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4.length = self->_selection.length;
    selection = NSUnionRange(v4, selection);
  }

  location = selection.location;
  length = selection.length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)forwardEditingAtomForCursorLocation:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a3;
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [(NSString *)self->_string length];
    v8 = [(NSString *)self->_string substringFromIndex:v4];
    v9 = [v8 rangeOfCharacterFromSet:v6];
    v10 = [(NSString *)self->_string substringToIndex:v4];
    v11 = [v10 rangeOfCharacterFromSet:v6 options:4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11 + v12 == v4;
      }

      if (v13)
      {
        v7 = v4;
LABEL_12:
        v3 = v7 - v4;

        goto LABEL_13;
      }

      v7 = v9 + v4;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = v11 + v12;
    }

    goto LABEL_12;
  }

  v3 = 0;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
  v14 = v4;
  v15 = v3;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)selection
{
  length = self->_selection.length;
  location = self->_selection.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)focus
{
  length = self->_focus.length;
  location = self->_focus.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)suggestionRange
{
  length = self->_suggestionRange.length;
  location = self->_suggestionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end