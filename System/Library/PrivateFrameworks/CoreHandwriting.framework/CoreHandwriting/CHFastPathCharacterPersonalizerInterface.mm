@interface CHFastPathCharacterPersonalizerInterface
- (CHFastPathCharacterPersonalizerInterface)initWithStyleInventory:(id)inventory characterSet:(id)set;
- (id).cxx_construct;
- (id)createSynthesisRequestsForCharacter:(CHFastPathCharacterSynthesisRequest *)character styleSamples:(id)samples;
- (void)enumerateCharactersToSynthesize:(BOOL)synthesize withPersonalizationBlock:(id)block;
- (void)enumeratePersonalizedCandidatesWithBlock:(id)block;
@end

@implementation CHFastPathCharacterPersonalizerInterface

- (CHFastPathCharacterPersonalizerInterface)initWithStyleInventory:(id)inventory characterSet:(id)set
{
  inventoryCopy = inventory;
  setCopy = set;
  if (objc_msgSend_init(self, v8, v9, v10, v11, v12))
  {
    sub_1838BD8E8(&v14, setCopy, inventoryCopy);
  }

  return 0;
}

- (void)enumerateCharactersToSynthesize:(BOOL)synthesize withPersonalizationBlock:(id)block
{
  blockCopy = block;
  ptr = self->_fastPathCharacterPersonalizer._fastPathCharacterPersonalizer.__ptr_;
  p_fastPathCharacterPersonalizer = &self->_fastPathCharacterPersonalizer;
  v6 = ptr;
  v8 = *(ptr + 4);
  for (i = *(ptr + 5); i != v8; i -= 32)
  {
    v10 = *(i - 32);
  }

  *(v6 + 5) = v8;
  sub_1838BDC50(p_fastPathCharacterPersonalizer, blockCopy);
}

- (id)createSynthesisRequestsForCharacter:(CHFastPathCharacterSynthesisRequest *)character styleSamples:(id)samples
{
  v9[0] = character->var0;
  v9[1] = character->var1;
  var2 = character->var2;
  v11 = character->var3;
  v12 = *&character->var4;
  v7 = sub_1838BE130(&self->_fastPathCharacterPersonalizer, v9, samples);

  return v7;
}

- (void)enumeratePersonalizedCandidatesWithBlock:(id)block
{
  blockCopy = block;
  sub_183963810(self->_fastPathCharacterPersonalizer._fastPathCharacterPersonalizer.__ptr_, &__p);
  v10 = __p;
  v11 = v24;
  if (v24 != __p)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = objc_msgSend_copy(*&v10[v12], v5, v6, v7, v8, v9);
      v20 = sub_1837A4260(*(__p + v12 + 12), v15, v16, v17, v18, v19);
      blockCopy[2](blockCopy, v13, v14, v20);

      ++v13;
      v10 = __p;
      v11 = v24;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3));
  }

  if (v10)
  {
    v21 = v10;
    if (v11 != v10)
    {
      do
      {
        v22 = *(v11 - 3);
        v11 -= 24;
      }

      while (v11 != v10);
      v21 = __p;
    }

    v24 = v10;
    operator delete(v21);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end