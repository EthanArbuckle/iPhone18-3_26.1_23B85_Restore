@interface CHFastPathCharacterPersonalizerInterface
- (CHFastPathCharacterPersonalizerInterface)initWithStyleInventory:(id)a3 characterSet:(id)a4;
- (id).cxx_construct;
- (id)createSynthesisRequestsForCharacter:(CHFastPathCharacterSynthesisRequest *)a3 styleSamples:(id)a4;
- (void)enumerateCharactersToSynthesize:(BOOL)a3 withPersonalizationBlock:(id)a4;
- (void)enumeratePersonalizedCandidatesWithBlock:(id)a3;
@end

@implementation CHFastPathCharacterPersonalizerInterface

- (CHFastPathCharacterPersonalizerInterface)initWithStyleInventory:(id)a3 characterSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_init(self, v8, v9, v10, v11, v12))
  {
    sub_1838BD8E8(&v14, v7, v6);
  }

  return 0;
}

- (void)enumerateCharactersToSynthesize:(BOOL)a3 withPersonalizationBlock:(id)a4
{
  v11 = a4;
  ptr = self->_fastPathCharacterPersonalizer._fastPathCharacterPersonalizer.__ptr_;
  p_fastPathCharacterPersonalizer = &self->_fastPathCharacterPersonalizer;
  v6 = ptr;
  v8 = *(ptr + 4);
  for (i = *(ptr + 5); i != v8; i -= 32)
  {
    v10 = *(i - 32);
  }

  *(v6 + 5) = v8;
  sub_1838BDC50(p_fastPathCharacterPersonalizer, v11);
}

- (id)createSynthesisRequestsForCharacter:(CHFastPathCharacterSynthesisRequest *)a3 styleSamples:(id)a4
{
  v9[0] = a3->var0;
  v9[1] = a3->var1;
  var2 = a3->var2;
  v11 = a3->var3;
  v12 = *&a3->var4;
  v7 = sub_1838BE130(&self->_fastPathCharacterPersonalizer, v9, a4);

  return v7;
}

- (void)enumeratePersonalizedCandidatesWithBlock:(id)a3
{
  v4 = a3;
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
      v4[2](v4, v13, v14, v20);

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