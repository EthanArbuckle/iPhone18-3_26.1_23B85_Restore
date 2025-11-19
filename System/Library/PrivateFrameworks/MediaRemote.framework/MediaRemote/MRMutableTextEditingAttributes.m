@interface MRMutableTextEditingAttributes
- (void)setInputTraits:(_MRTextInputTraits *)a3;
- (void)setPrompt:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MRMutableTextEditingAttributes

- (void)setTitle:(id)a3
{
  if (self->super._title != a3)
  {
    v5 = [a3 copy];
    title = self->super._title;
    self->super._title = v5;
  }
}

- (void)setPrompt:(id)a3
{
  if (self->super._prompt != a3)
  {
    v5 = [a3 copy];
    prompt = self->super._prompt;
    self->super._prompt = v5;
  }
}

- (void)setInputTraits:(_MRTextInputTraits *)a3
{
  *&self->super._inputTraits.autocapitalizationType = *&a3->autocapitalizationType;
  v3 = *&a3->returnKeyType;
  v4 = *&a3->validTextRange.length;
  v5 = *a3->PINEntrySeparatorIndexes;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[2] = *&a3->PINEntrySeparatorIndexes[2];
  *self->super._inputTraits.PINEntrySeparatorIndexes = v5;
  *&self->super._inputTraits.validTextRange.length = v4;
  *&self->super._inputTraits.returnKeyType = v3;
  v6 = *&a3->PINEntrySeparatorIndexes[4];
  v7 = *&a3->PINEntrySeparatorIndexes[6];
  v8 = *&a3->PINEntrySeparatorIndexes[8];
  self->super._inputTraits.PINEntrySeparatorIndexesCount = a3->PINEntrySeparatorIndexesCount;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[8] = v8;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[6] = v7;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[4] = v6;
}

@end