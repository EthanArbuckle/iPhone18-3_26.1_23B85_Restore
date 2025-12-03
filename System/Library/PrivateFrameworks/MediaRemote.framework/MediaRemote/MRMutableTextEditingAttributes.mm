@interface MRMutableTextEditingAttributes
- (void)setInputTraits:(_MRTextInputTraits *)traits;
- (void)setPrompt:(id)prompt;
- (void)setTitle:(id)title;
@end

@implementation MRMutableTextEditingAttributes

- (void)setTitle:(id)title
{
  if (self->super._title != title)
  {
    v5 = [title copy];
    title = self->super._title;
    self->super._title = v5;
  }
}

- (void)setPrompt:(id)prompt
{
  if (self->super._prompt != prompt)
  {
    v5 = [prompt copy];
    prompt = self->super._prompt;
    self->super._prompt = v5;
  }
}

- (void)setInputTraits:(_MRTextInputTraits *)traits
{
  *&self->super._inputTraits.autocapitalizationType = *&traits->autocapitalizationType;
  v3 = *&traits->returnKeyType;
  v4 = *&traits->validTextRange.length;
  v5 = *traits->PINEntrySeparatorIndexes;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[2] = *&traits->PINEntrySeparatorIndexes[2];
  *self->super._inputTraits.PINEntrySeparatorIndexes = v5;
  *&self->super._inputTraits.validTextRange.length = v4;
  *&self->super._inputTraits.returnKeyType = v3;
  v6 = *&traits->PINEntrySeparatorIndexes[4];
  v7 = *&traits->PINEntrySeparatorIndexes[6];
  v8 = *&traits->PINEntrySeparatorIndexes[8];
  self->super._inputTraits.PINEntrySeparatorIndexesCount = traits->PINEntrySeparatorIndexesCount;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[8] = v8;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[6] = v7;
  *&self->super._inputTraits.PINEntrySeparatorIndexes[4] = v6;
}

@end