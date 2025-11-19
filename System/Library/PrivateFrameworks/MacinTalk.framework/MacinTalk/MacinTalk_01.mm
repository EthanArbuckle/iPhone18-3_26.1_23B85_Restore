BOOL MTFEPOSResolver::RequireTagAndPOS(MTFEPOSResolver *this, MTFESpeechElement *a2, __int16 a3, int a4)
{
  *(this + 10) = a3;
  *(this + 6) = a4;
  *(this + 7) = 0;
  *(this + 16) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  v6 = *(this + 28);
  if (*(this + 28))
  {
    MTFESpeechElement::clear(a2);
    MTFESpeechElement::TransferChildren((this + 48), a2);
  }

  return v6 != 0;
}

uint64_t MTFEPOSResolver::VisitCommand(uint64_t this, MTFECommand *a2)
{
  if (a2->var8 == 1953456745)
  {
    v2 = a2->var9 >> 24;
    v3 = v2 > 6;
    v4 = (1 << v2) & 0x6E;
    if (v3 || v4 == 0)
    {
      *(this + 11) = 1;
    }
  }

  return this;
}

uint64_t MTFEPOSResolver::VisitHomograph(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  v4 = *(this + 10);
  result = SLWordTagSet::find((&a2[1].var0 + 4));
  if ((result & 1) == 0)
  {
    if ((*(this + 10) & 1) != 0 || (result = SLWordTagSet::find((&a2[1].var0 + 4)), result))
    {
      if ((*(this + 6) & a2[1].var0) != 0)
      {
        MTFESpeechElement::RemoveChild(a2->var5, a2);
        MTFESpeechElement::AddChildAfter((this + 48), a2, *(this + 9));
        *(this + 7) |= LODWORD(a2[1].var0);

        return operator+=();
      }
    }
  }

  return result;
}

void sub_257B21D14(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v2, 0x10A2C40BF445734);

  _Unwind_Resume(a1);
}

void sub_257B223C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTWrappedPhraseProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void MTFBlockNotifier::MTFBlockNotifier(MTFBlockNotifier *this, MTWrappedPhraseProcessor *a2)
{
  v3 = a2;
  MTBENotifier::MTBENotifier(this);
  *this = &unk_2868F4FE8;
  *(this + 8) = 0;
  objc_storeWeak(this + 8, v3);
}

void MTFBlockNotifier::~MTFBlockNotifier(MTBENotifier *this)
{
  objc_destroyWeak(&this[1].var0);

  MTBENotifier::~MTBENotifier(this);
}

{
  objc_destroyWeak(&this[1].var0);
  MTBENotifier::~MTBENotifier(this);

  JUMPOUT(0x259C6DA90);
}

void MTFBlockNotifier::NotifySpeechDone(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 8);
  [WeakRetained finishedSampleGeneration];
}

void MTFBlockNotifier::NotifySync(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 8);
  [WeakRetained generatedSampleForSync:a2];
}

void MTFBlockNotifier::NotifyPhoneme(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 8);
  [WeakRetained generatedSampleForPhoneme:a2];
}

void MTFBlockNotifier::NotifyWord(id *this, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(this + 8);
  [WeakRetained generatedSampleForWord:a2 length:a3];
}

MTFESpeechElement *MTFESpeechElement::AddChildBefore(MTFESpeechElement *this, MTFESpeechElement *a2, MTFESpeechElement *a3)
{
  v5 = this;
  if (a3)
  {
    if (a3->var5 != this)
    {
      this = MTBEAbort(v5);
    }

    ++v5->var1;
    a2->var5 = v5;
    p_var7 = &a3->var7;
  }

  else
  {
    ++this->var1;
    a2->var5 = this;
    p_var7 = &this->var4;
  }

  v7 = *p_var7;
  a2->var7 = v7;
  if (!v7 || (v7->var6 = a2, v7->var5 != v5))
  {
    v5->var3 = a2;
  }

  a2->var6 = a3;
  p_var4 = &v5->var4;
  if (a3)
  {
    p_var4 = &a3->var7;
  }

  *p_var4 = a2;
  return this;
}

MTFESpeechElement *MTFESpeechElement::AddChildAfter(MTFESpeechElement *this, MTFESpeechElement *a2, MTFESpeechElement *a3)
{
  v5 = this;
  if (a3)
  {
    if (a3->var5 != this)
    {
      this = MTBEAbort(v5);
    }

    ++v5->var1;
    a2->var5 = v5;
    p_var6 = &a3->var6;
  }

  else
  {
    ++this->var1;
    a2->var5 = this;
    p_var6 = &this->var3;
  }

  v7 = *p_var6;
  a2->var6 = v7;
  if (!v7 || (v7->var7 = a2, v7->var5 != v5))
  {
    v5->var4 = a2;
  }

  a2->var7 = a3;
  p_var3 = &v5->var3;
  if (a3)
  {
    p_var3 = &a3->var6;
  }

  *p_var3 = a2;
  return this;
}

MTFESpeechElement *MTFESpeechElement::RemoveChild(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  v3 = this;
  if (a2->var5 != this)
  {
    this = MTBEAbort(v3);
  }

  --v3->var1;
  var6 = a2->var6;
  var7 = a2->var7;
  if (var6)
  {
    if (var6->var5 == v3)
    {
      v6 = a2->var6;
    }

    else
    {
      v6 = 0;
    }

    if (var7)
    {
LABEL_8:
      if (var7->var5 == v3)
      {
        v7 = a2->var7;
      }

      else
      {
        v7 = 0;
      }

      if (var6)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    if (var7)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if (var6)
  {
LABEL_12:
    var6->var7 = var7;
  }

LABEL_13:
  if (!v6)
  {
    v3->var4 = v7;
  }

  if (var7)
  {
    var7->var6 = var6;
  }

  if (!v7)
  {
    v3->var3 = v6;
  }

  return this;
}

MTFESpeechElement *MTFESpeechElement::SelectChild(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if (a2->var5 != this)
  {
    MTBEAbort(this);
  }

  result = this->var3;
  *&this->var3 = *&a2->var3;
  this->var1 = a2->var1;
  a2->var1 = 0;
  a2->var3 = 0;
  a2->var4 = 0;
  for (i = this->var3; i; i = i->var6)
  {
    if (i->var5 != a2)
    {
      break;
    }

    i->var5 = this;
  }

  if (result)
  {
    do
    {
      if (result->var5 != this)
      {
        break;
      }

      var6 = result->var6;
      result->var5 = 0;
      (*(result->var0 + 2))(result);
      result = var6;
    }

    while (var6);
  }

  return result;
}

MTFESpeechElement *MTFESpeechElement::AddLevel(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  var3 = this->var3;
  if (var3)
  {
    v3 = this->var3;
    do
    {
      if (v3->var5 != this)
      {
        break;
      }

      v3->var5 = a2;
      v3 = v3->var6;
    }

    while (v3);
  }

  a2->var1 = this->var1;
  a2->var5 = this;
  var4 = this->var4;
  a2->var3 = var3;
  a2->var4 = var4;
  this->var1 = 1;
  this->var3 = a2;
  this->var4 = a2;
  return this;
}

MTFESpeechElement *MTFESpeechElement::TransferChildren(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  var3 = this->var3;
  if (var3)
  {
    v4 = this;
    do
    {
      MTFESpeechElement::RemoveChild(v4, var3);
      this = MTFESpeechElement::AddChildAfter(a2, var3, a2->var4);
      var3 = v4->var3;
    }

    while (var3);
  }

  return this;
}

MTFESpeechElement *MTFESpeechElement::SplitChildren(MTFESpeechElement *this, MTFESpeechElement *a2, MTFESpeechElement *a3)
{
  v5 = this;
  if (this->var6 != a3)
  {
    this = MTBEAbort(v5);
  }

  var3 = a3->var3;
  var4 = v5->var4;
  if (var3)
  {
    var4->var6 = var3;
    p_var7 = &var3->var7;
  }

  else
  {
    p_var7 = &a3->var4;
  }

  *p_var7 = var4;
  a3->var3 = a2;
  var7 = a2->var7;
  if (var7)
  {
    v10 = a2->var7;
    if (var7->var5 != v5)
    {
      v10 = 0;
      v5->var3 = 0;
    }

    v5->var4 = v10;
    var7->var6 = 0;
  }

  else
  {
    v5->var3 = 0;
    v5->var4 = 0;
  }

  a2->var7 = 0;
  do
  {
    if (a2->var5 != v5)
    {
      break;
    }

    a2->var5 = a3;
    --v5->var1;
    ++a3->var1;
    a2 = a2->var6;
  }

  while (a2);
  return this;
}

MTFESpeechElement *MTFESpeechElement::SetPrevCousin(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  a2->var6 = this;
  this->var7 = a2;
  return this;
}

MTFESpeechElement *MTFESpeechElement::SetNextCousin(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  a2->var7 = this;
  this->var6 = a2;
  return this;
}

MTFESpeechElement *MTFESpeechElement::VisitChildren(MTFESpeechElement *this, MTFESpeechVisitor *a2)
{
  var3 = this->var3;
  if (var3)
  {
    v4 = this;
    do
    {
      if (var3->var5 != v4)
      {
        break;
      }

      var6 = var3->var6;
      if (!var3->var2)
      {
        MTBEAbort(v4);
      }

      this = (*var3->var0)(var3, a2);
      var3 = var6;
    }

    while (var6);
  }

  return this;
}

MTFESpeechElement *MTFESpeechElement::clear(MTFESpeechElement *this)
{
  for (result = this->var3; result; result = this->var3)
  {
    (*(result->var0 + 2))(result);
  }

  return result;
}

void MTFESpeechElement::~MTFESpeechElement(MTFESpeechElement *this)
{
  this->var0 = &unk_2868F5078;
  for (i = this->var3; i; i = this->var3)
  {
    (*(i->var0 + 2))(i);
  }

  var5 = this->var5;
  if (var5)
  {
    MTFESpeechElement::RemoveChild(var5, this);
  }

  if (!this->var2)
  {
    MTBEAbort(this);
  }

  this->var2 = 0;
}

void MTFESpeechElement::MTFESpeechElement(MTFESpeechElement *this)
{
  this->var0 = &unk_2868F5078;
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
}

double MTFESpeechElement::CleanseClone(MTFESpeechElement *this)
{
  this->var1 = 0;
  result = 0.0;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  return result;
}

char *MTFESentence::FlagName(MTFESentence *this)
{
  if (this <= 3)
  {
    return MTFESentence::flagNames[this];
  }

  else
  {
    return 0;
  }
}

void MTFESentence::MTFESentence(MTFESentence *this, float a2, float a3, float a4)
{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  this->var0 = &unk_2868F50A0;
  this->var8 = 0;
  *&this->var9 = 0;
  this->var12 = a2;
  this->var13 = a3;
  this->var14 = a4;
  this->var15 = 0;
}

{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  this->var0 = &unk_2868F50A0;
  this->var8 = 0;
  *&this->var9 = 0;
  this->var12 = a2;
  this->var13 = a3;
  this->var14 = a4;
  this->var15 = 0;
}

void MTFEIntonationalPhrase::MTFEIntonationalPhrase(MTFEIntonationalPhrase *this)
{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  this->var8 = 0;
  this->var0 = &unk_2868F50C8;
  this->var9.var1 = 0;
  this->var9.var2 = 1;
  *&this->var9.var3 = 0u;
  *&this->var9.var5 = 0u;
  this->var9.var7 = 0;
  *&this->var10.var0 = 0;
  this->var9.var0 = &unk_2868F5468;
  *&this->var17 = 0;
  *&this->var20 = 0;
  this->var22 = 0;
  *&this->var23 = 0;
  this->var28 = 0;
  this->var12 = 0;
  this->var13 = 0;
  this->var27 = 0.0;
  this->var25 = 0;
  this->var26 = 0;
}

void MTFEIntonationalPhrase::~MTFEIntonationalPhrase(MTFEIntonationalPhrase *this)
{
  this->var0 = &unk_2868F50C8;
  var12 = this->var12;
  if (var12)
  {
    MEMORY[0x259C6DA70](var12, 0x1000C8052888210);
  }

  var28 = this->var28;
  if (var28)
  {
    MEOWVectorBase::~MEOWVectorBase(var28);
    MEMORY[0x259C6DA90]();
  }

  MTFESpeechElement::~MTFESpeechElement(&this->var9);

  MTFESpeechElement::~MTFESpeechElement(this);
}

{
  MTFEIntonationalPhrase::~MTFEIntonationalPhrase(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEIntermediatePhrase::MTFEIntermediatePhrase(MTFEIntermediatePhrase *this)
{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  *&this->var8.var0 = 0;
  this->var0 = &unk_2868F50F0;
  this->var12 = 0;
  this->var10 = 0;
  *&this->var14 = 4;
}

{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  *&this->var8.var0 = 0;
  this->var0 = &unk_2868F50F0;
  this->var12 = 0;
  this->var10 = 0;
  *&this->var14 = 4;
}

void MTFEWord::MTFEWord(MTFEWord *this, unsigned __int8 a2, char a3)
{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  this->var0 = &unk_2868F5118;
  this->var8 = 0;
  this->var9 = -1;
  this->var10 = a3;
  this->var11 = a2;
  this->var12 = 32;
  this->var13 = -1;
  this->var14.var0[0] = 0;
  this->var15 = -1;
  this->var16 = 0;
  this->var17.var0[0] = 0;
  this->var18.var1 = 0;
  this->var18.var2 = 1;
  this->var18.var7 = 0;
  *&this->var19.var0 = 0;
  *&this->var18.var3 = 0u;
  *&this->var18.var5 = 0u;
  this->var18.var0 = &unk_2868F5468;
  this->var28 = 0;
  this->var27[0] = 0;
  *&this->var21 = 0;
  this->var25 = 0;
}

MTFESpeechElement *MTFEWord::PrevWord(MTFEWord *this)
{
  result = this->var7;
  if (!result)
  {
    var7 = this->var5->var7;
    if (var7)
    {
      return var7->var4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

MTFESpeechElement *MTFEWord::NextWord(MTFEWord *this)
{
  result = this->var6;
  if (!result)
  {
    var6 = this->var5->var6;
    if (var6)
    {
      return var6->var3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

MTFEWord *MTFEWord::POSForPrev(MTFEWord *this, unsigned __int8 *a2, SLWordTagSet *a3, MTFEWord **a4)
{
  if (this->var12 == 62)
  {
    *a2 = this->var13;
    if (a3)
    {
      *a3 = this->var14;
    }

    if (a4)
    {
      while (1)
      {
        var7 = this->var7;
        if (!var7)
        {
          v5 = this->var5->var7;
          if (!v5)
          {
            break;
          }

          var7 = v5->var4;
          if (!var7)
          {
            break;
          }
        }

        this = var7;
        if (var7->var12 == 60)
        {
          var4 = var7->var7;
          if (var4)
          {
            goto LABEL_19;
          }

          var5 = var7->var5;
          goto LABEL_16;
        }
      }

LABEL_18:
      var4 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    *a2 = this->var15;
    if (a3)
    {
      *a3 = this->var17;
    }

    if (a4)
    {
      var4 = this->var7;
      if (!var4)
      {
        var5 = this->var5;
LABEL_16:
        v8 = var5->var7;
        if (!v8)
        {
          goto LABEL_18;
        }

        var4 = v8->var4;
      }

LABEL_19:
      *a4 = var4;
    }
  }

  return this;
}

MTFEWord *MTFEWord::POSForNext(MTFEWord *this, unsigned __int8 *a2, SLWordTagSet *a3, MTFEWord **a4)
{
  if (this->var12 == 60)
  {
    *a2 = this->var13;
    if (a3)
    {
      *a3 = this->var14;
    }

    if (a4)
    {
      while (1)
      {
        var6 = this->var6;
        if (!var6)
        {
          v5 = this->var5->var6;
          if (!v5)
          {
            break;
          }

          var6 = v5->var3;
          if (!var6)
          {
            break;
          }
        }

        this = var6;
        if (var6->var12 == 62)
        {
          var3 = var6->var6;
          if (var3)
          {
            goto LABEL_19;
          }

          var5 = var6->var5;
          goto LABEL_16;
        }
      }

LABEL_18:
      var3 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    *a2 = this->var15;
    if (a3)
    {
      *a3 = this->var17;
    }

    if (a4)
    {
      var3 = this->var6;
      if (!var3)
      {
        var5 = this->var5;
LABEL_16:
        v8 = var5->var6;
        if (!v8)
        {
          goto LABEL_18;
        }

        var3 = v8->var3;
      }

LABEL_19:
      *a4 = var3;
    }
  }

  return this;
}

MTFEWord *MTFEWord::POSForNext(MTFEWord *this, unsigned int *a2, SLWordTagSet *a3, MTFEWord **a4)
{
  if (this->var12 == 60)
  {
    *a2 = 1 << this->var13;
    if (a3)
    {
      *a3 = this->var14;
    }

    if (a4)
    {
      while (1)
      {
        this = this->var6;
        if (!this)
        {
          break;
        }

        if (this->var12 == 62)
        {
          goto LABEL_11;
        }
      }

      var6 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    *a2 = this->var16;
    if (a3)
    {
      *a3 = this->var17;
    }

    if (a4)
    {
LABEL_11:
      var6 = this->var6;
LABEL_13:
      *a4 = var6;
    }
  }

  return this;
}

void MTFESyllable::MTFESyllable(MTFESyllable *this)
{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  *&this->var8 = 0;
  this->var0 = &unk_2868F5140;
  this->var12 = 0.0;
}

{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  *&this->var8 = 0;
  this->var0 = &unk_2868F5140;
  this->var12 = 0.0;
}

void MTFEPhoneme::MTFEPhoneme(MTFEPhoneme *this, unsigned __int8 a2)
{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  this->var0 = &unk_2868F5168;
  this->var8 = 0;
  this->var9 = a2;
  this->var10 = 0;
  *&this->var11 = 0;
  *&this->var13 = 0x3F0000003F800000;
  *&this->var15 = 0;
  this->var17 = 0;
  *&this->var18 = -1;
  this->var21 = 0;
}

{
  this->var1 = 0;
  this->var2 = 1;
  *&this->var3 = 0u;
  *&this->var5 = 0u;
  this->var7 = 0;
  this->var0 = &unk_2868F5168;
  this->var8 = 0;
  this->var9 = a2;
  this->var10 = 0;
  *&this->var11 = 0;
  *&this->var13 = 0x3F0000003F800000;
  *&this->var15 = 0;
  this->var17 = 0;
  *&this->var18 = -1;
  this->var21 = 0;
}

void MTFEPhoneme::~MTFEPhoneme(MTFEPhoneme *this)
{
  this->var0 = &unk_2868F5168;
  var17 = this->var17;
  if (var17)
  {
    MEMORY[0x259C6DA90](var17, 0x1000C40F33D7AAALL);
  }

  MTFESpeechElement::~MTFESpeechElement(this);
}

{
  MTFEPhoneme::~MTFEPhoneme(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTFESpeechVisitor::Visit(MTFESpeechVisitor *this, MTFESpeechElement *a2)
{
  if (!a2 || !a2->var2)
  {
    MTBEAbort(a2);
  }

  v4 = *a2->var0;

  return v4(a2, this);
}

void MTFESpeechPedigree::MTFESpeechPedigree(MTFESpeechPedigree *this, MTFESpeechElement *a2)
{
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_2868F5190;
  (*a2->var0)(a2, this);
}

{
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_2868F5190;
  (*a2->var0)(a2, this);
}

void MTFESpeechIterator::MTFESpeechIterator(MTFESpeechIterator *this, MTFESpeechElement *a2)
{
  *this = &unk_2868F5200;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = a2;
  if (a2)
  {
    (*a2->var0)(a2, this);
  }
}

{
  *this = &unk_2868F5200;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = a2;
  if (a2)
  {
    (*a2->var0)(a2, this);
  }
}

uint64_t MTFESpeechIterator::operator=(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *(result + 56) = 0;
  *(result + 64) = a2;
  if (a2)
  {
    return (**a2)(a2, result);
  }

  return result;
}

void *MTFESpeechIterator::operator++(void *a1)
{
  for (i = a1[8]; i; a1[8] = i)
  {
    if (i == a1[7])
    {
      (*(*a1 + 200))(a1);
      a1[7] = 0;
    }

    else if (i == a1[6])
    {
      (*(*a1 + 184))(a1);
      a1[6] = 0;
    }

    else if (i == a1[5])
    {
      (*(*a1 + 168))(a1);
      a1[5] = 0;
    }

    else if (i == a1[4])
    {
      (*(*a1 + 152))(a1);
      a1[4] = 0;
    }

    else if (i == a1[3])
    {
      (*(*a1 + 136))(a1);
      a1[3] = 0;
    }

    else if (i == a1[2])
    {
      (*(*a1 + 120))(a1);
      a1[2] = 0;
    }

    else
    {
      v3 = a1[1];
      if (i == v3)
      {
        (*(*a1 + 104))(a1);
        a1[1] = 0;
      }

      else
      {
        MTBEAbort(v3);
      }
    }

    v4 = a1[8];
    v5 = *(v4 + 40);
    if (v5)
    {
      i = *(v4 + 32);
      if (*(v5 + 32) == i)
      {
        a1[8] = v5;
        (**v5)(v5, a1);
        return a1;
      }
    }

    else
    {
      i = *(v4 + 32);
    }
  }

  return a1;
}

MTFESpeechElement *MTFESpeechIterator::VisitSentence(MTFESpeechIterator *this, MTFESentence *a2)
{
  *(this + 1) = a2;
  *(this + 8) = a2;
  (*(*this + 96))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFESpeechIterator::VisitIntonationalPhrase(MTFESpeechIterator *this, MTFEIntonationalPhrase *a2)
{
  *(this + 2) = a2;
  *(this + 8) = a2;
  (*(*this + 112))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFESpeechIterator::VisitIntermediatePhrase(MTFESpeechIterator *this, MTFEIntermediatePhrase *a2)
{
  *(this + 3) = a2;
  *(this + 8) = a2;
  (*(*this + 128))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFESpeechIterator::VisitWord(MTFESpeechIterator *this, MTFEWord *a2)
{
  *(this + 4) = a2;
  *(this + 8) = a2;
  (*(*this + 144))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFESpeechIterator::VisitHomograph(MTFESpeechIterator *this, MTFEHomograph *a2)
{
  *(this + 5) = a2;
  *(this + 8) = a2;
  (*(*this + 160))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFESpeechIterator::VisitSyllable(MTFESpeechIterator *this, MTFESyllable *a2)
{
  *(this + 6) = a2;
  *(this + 8) = a2;
  (*(*this + 176))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFESpeechIterator::VisitPhoneme(MTFESpeechIterator *this, MTFEPhoneme *a2)
{
  *(this + 7) = a2;
  *(this + 8) = a2;
  (*(*this + 192))(this);
  result = a2->var3;
  if (result)
  {
    v4 = *result->var0;

    return v4();
  }

  return result;
}

void *MTFEFirstPhoneme(MTFESpeechElement *a1)
{
  do
  {
    v2 = a1;
    a1 = a1->var3;
  }

  while (a1);
  v3 = *v2->var0;
}

void *MTFELastPhoneme(MTFESpeechElement *a1)
{
  do
  {
    v2 = a1;
    a1 = a1->var4;
  }

  while (a1);
  v3 = *v2->var0;
}

void MTFEHomograph::~MTFEHomograph(MTFEHomograph *this)
{
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTFECommand::~MTFECommand(MTFECommand *this)
{
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESentence::~MTFESentence(MTFESentence *this)
{
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTFECommands::~MTFECommands(MTFECommands *this)
{
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEIntermediatePhrase::~MTFEIntermediatePhrase(MTFEIntermediatePhrase *this)
{
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEWord::~MTFEWord(MTFEWord *this)
{
  this->var0 = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement(&this->var18);

  MTFESpeechElement::~MTFESpeechElement(this);
}

{
  this->var0 = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement(&this->var18);
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESyllable::~MTFESyllable(MTFESyllable *this)
{
  MTFESpeechElement::~MTFESpeechElement(this);

  JUMPOUT(0x259C6DA90);
}

void MTPBPhraseProcessor::MTPBPhraseProcessor(void *a1, uint64_t a2, __int128 *a3)
{
  MTPBVoice::MTPBVoice((a1 + 534), a2);
  *a1 = &unk_2868F5550;
  MTBEPhraseProcessor::MTBEPhraseProcessor(a1, (a1 + 534), a3, 1);
}

void sub_257B248B8(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v2, 0x10A1C4036524A53);
  MTBEPhraseProcessor::~MTBEPhraseProcessor(v1);
  _Unwind_Resume(a1);
}

void MTPBPhraseProcessor::ExpandCompoundsPreDur(MTPBPhraseProcessor *this, MTFESpeechElement *a2)
{
  if ((*(this + 69) & 1) == 0)
  {
    v3 = 0;
    v2[0] = &unk_2868F5700;
    v4 = 1;
    MTFESpeechVisitor::Visit(v2, a2);
    MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  }
}

void MTPBPhraseProcessor::ExpandCompoundsPostDur(MTPBPhraseProcessor *this, MTFESpeechElement *a2)
{
  if ((*(this + 69) & 1) == 0)
  {
    v3 = 0;
    v2[0] = &unk_2868F5700;
    v4 = 0;
    MTFESpeechVisitor::Visit(v2, a2);
    MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  }
}

void MTPBPhraseProcessor::~MTPBPhraseProcessor(MTPBPhraseProcessor *this)
{
  MTBEPhraseProcessor::~MTBEPhraseProcessor(this);

  JUMPOUT(0x259C6DA90);
}

double MTPBVoice::MTPBVoice(uint64_t a1, uint64_t a2)
{
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = *a2;
  *(a1 + 62) = *(a2 + 8);
  *(a1 + 70) = *(a2 + 16);
  *(a1 + 72) = *(a2 + 18);
  *(a1 + 76) = *(a2 + 22);
  *(a1 + 84) = *(a2 + 30);
  *(a1 + 88) = *(a2 + 34);
  *(a1 + 352) = *(a2 + 36);
  result = *(a2 + 38);
  *(a1 + 298) = result;
  *(a1 + 310) = *(a2 + 46);
  return result;
}

uint64_t OpenResourceFile(__CFBundle *a1, const __CFString *a2, uint64_t *a3)
{
  v4 = CFBundleCopyResourceURL(a1, a2, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCopyFileSystemPath(v4, kCFURLPOSIXPathStyle);
    CFRelease(v5);
    if (v6)
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0);
      if (CStringPtr)
      {
        v8 = open(CStringPtr, 0);
        *a3 = v8;
        goto LABEL_5;
      }

      Length = CFStringGetLength(v6);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0);
      v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      if (v12)
      {
        v13 = v12;
        if (CFStringGetCString(v6, v12, MaximumSizeForEncoding + 1, 0))
        {
          *a3 = open(v13, 0);
          free(v13);
          v8 = *a3;
LABEL_5:
          if (v8 == -1)
          {
            v9 = *__error();
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_14;
        }

        free(v13);
      }

      v9 = -1;
LABEL_14:
      CFRelease(v6);
      return v9;
    }
  }

  return -1;
}

uint64_t ReadResourceDataFile(__CFBundle *a1, const __CFString *a2, void **a3)
{
  v11 = 0;
  v4 = OpenResourceFile(a1, a2, &v11);
  if (!v4)
  {
    v5 = v11;
    v6 = fstat(v11, &v10);
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      st_size = v10.st_size;
      v8 = malloc_type_malloc(v10.st_size, 0x1369F54EuLL);
      *a3 = v8;
      if (v8 && read(v5, v8, st_size) != st_size)
      {
        free(*a3);
        *a3 = 0;
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }
    }

    close(v5);
  }

  return v4;
}

uint64_t MTFEFrameFiller::MTFEFrameFiller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *a1 = &unk_2868F5608;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 40) = a6;
  *(a1 + 88) = a7;
  MEOWVectorBase::MEOWVectorBase((a1 + 112), 8);
  *(a1 + 148) = a8;
  *(a1 + 149) = 257;
  *(a1 + 151) = 0;
  *(a1 + 184) = &unk_2868F5200;
  *(a1 + 248) = 0;
  *(a1 + 384) = xmmword_257B895B0;
  return a1;
}

void MTFEFrameFiller::~MTFEFrameFiller(MTFEFrameFiller *this)
{
  *this = &unk_2868F5608;
  v2 = (this + 112);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 184));
  MEOWVectorBase::~MEOWVectorBase(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  MTFEFrameFiller::~MTFEFrameFiller(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTFEFrameFiller::InitPhrase(MTFEFrameFiller *this, MTFESpeechElement *a2)
{
  v3 = (this + 518);
  result = MTFESpeechIterator::operator=(this + 184, a2);
  v5 = *(this + 30);
  v6 = *(this + 27);
  *(this + 34) = v5;
  *(this + 35) = v6;
  *(this + 32) = v5;
  *(this + 33) = v5;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 153) = 1;
  *(this + 16) = 0;
  *(this + 36) = 0;
  *(this + 81) = 0;
  v7 = *(this + 2);
  v8 = *(*(this + 1) + 8);
  *(this + 22) = v8;
  v9 = *(v7 + 240);
  *(this + 20) = v9;
  if (v9)
  {
    v10 = *v9;
    *(this + 20) = v9 + 1;
    v9 = bswap32(v10);
  }

  *(this + 21) = v9;
  v11 = *(v7 + 26);
  *(this + 257) = v11;
  v12 = *(v7 + 28);
  *(this + 258) = v12;
  *(this + 52) = 0;
  *(this + 53) = 8 * v11;
  *(this + 125) = 0;
  *v3 = 0x200000000;
  *(this + 263) = 1;
  *(this + 264) = *v8;
  *(this + 256) = 256;
  *(this + 265) = 0;
  v13 = *(this + 5);
  *(this + 266) = (((26215 * v13[153]) >> 16) >> 1) + (((26215 * v13[153]) >> 16) >> 15);
  v14 = 1374389535 * (v13[152] << 16);
  *(this + 54) = 8 * v11;
  *(this + 55) = ((v14 >> 37) + (v14 >> 63));
  v15 = 274877907 * (v13[149] << 16);
  v16 = 274877907 * (v13[150] << 16);
  *(this + 56) = ((v15 >> 38) + (v15 >> 63));
  *(this + 57) = ((v16 >> 38) + (v16 >> 63));
  v17 = 1717986919 * (v13[151] << 16);
  v18 = 1374389535 * (((v17 >> 34) + (v17 >> 63)) << 8);
  v19 = 1374389535 * (v13[20] << 16);
  *(this + 58) = ((v18 >> 38) + (v18 >> 63));
  *(this + 59) = ((v19 >> 37) + (v19 >> 63));
  v20 = 1374389535 * (v13[21] << 16);
  v21 = 1374389535 * (v13[22] << 16);
  *(this + 60) = ((v20 >> 37) + (v20 >> 63));
  *(this + 61) = ((v21 >> 37) + (v21 >> 63));
  v3[2] = 0xD8F0000000000000;
  if (*(*(this + 24) + 56))
  {
    *(this + 257) = v11 + 35;
    *(this + 258) = v12 + 21;
  }

  if (v13[4])
  {
    v22 = &MTFEFrameFiller::GenderSpecific::sFemale;
  }

  else
  {
    v22 = &MTFEFrameFiller::GenderSpecific::sMale;
  }

  *(this + 185) = v22;
  if ((MTBEDebugFlags::sMTXDebug & 8) != 0 && (*(this + 148) & 1) == 0)
  {

    return puts("Av Af   f0   f1   f2   f3 a2 a3 a4 a5 a6  fnz AB  BW1  BW2  BW3 ED MK");
  }

  return result;
}

uint64_t MTFEFrameFiller::SyncWithUnitSearch(uint64_t this)
{
  v1 = this;
  if (*(this + 192) && *(this + 208))
  {
    pthread_mutex_lock((*(this + 32) + 96));
    for (i = *(v1 + 208); i == *(*(v1 + 192) + 80); i = *(v1 + 208))
    {
      MTBEWorker::DebugLog("Waiting for unit selection to proceed [%08x].\n", v2, i);
      pthread_cond_wait((*(v1 + 32) + 160), (*(v1 + 32) + 96));
    }

    this = pthread_mutex_unlock((*(v1 + 32) + 96));
  }

  *(v1 + 153) = 0;
  return this;
}

uint64_t MTFEFrameFiller::FillNextFrame(int64x2_t *this, const char *a2)
{
  if (this[9].i8[5] != 1)
  {
    goto LABEL_26;
  }

  v4 = this[15].i64[0];
  if (!v4)
  {
    MTBEWorker::DebugLog("End of sentence.\n", a2);
LABEL_12:
    result = 0;
    this[9].i8[9] = 0;
    this[9].i8[7] = 0;
    return result;
  }

  if (this[9].i8[7] == 1 && (!this[9].i8[11] || this[9].i8[11] == 1 && (*(v4 + 74) & 1) != 0))
  {
    goto LABEL_12;
  }

  if (this[9].i8[10])
  {
    return 0;
  }

  if (this[13].i64[0] != this[6].i64[1])
  {
    pthread_mutex_lock((this[2].i64[0] + 96));
    if (this[13].i64[0] == *(this[12].i64[0] + 80))
    {
      MTBEWorker::DebugLog("Will stall on search [%08x].\n", v5, this[13].i64[0]);
      this[9].i8[9] = 1;
    }

    else
    {
      MTBEWorker::DebugLog("Intermediate Phrase [%08x].\n", v5, this[13].i64[0]);
      this[6].i64[1] = this[13].i64[0];
    }

    pthread_mutex_unlock((this[2].i64[0] + 96));
    v7 = this[9].i8[9];
    this[9].i8[10] = v7;
    if (v7)
    {
      return 0;
    }
  }

  v8 = this[12].i64[1];
  if (v8 != this[6].i64[0])
  {
    this[6].i64[0] = v8;
    if (v8)
    {
      v9 = *(v8 + 128);
      if (v9)
      {
        v9 += 4 * *(v8 + 144);
      }

      this[3].i64[0] = v9;
      v10 = *(v8 + 136);
      if (v10)
      {
        v8 = v10 + 4 * *(v8 + 144);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      this[3].i64[0] = 0;
    }

    this[3].i64[1] = v8;
  }

  MTFEFrameFiller::InitControls(this);
LABEL_26:
  if (a2)
  {
    if ((this[9].i8[4] & 1) == 0)
    {
      MTFEFrameFiller::InterpolateFormants(this);
    }

    MTFEFrameFiller::InterpolatePitch(this);
    MTFEFrameFiller::SaveFrame(this, a2);
    v11 = this[21].i16[4] + 1;
    this[21].i16[4] = v11;
    this[9].i8[5] = this[21].i16[5] <= v11;
  }

  else
  {
    if ((MTBEDebugFlags::sMTXDebug & 8) != 0)
    {
      v12 = MEMORY[0x277D85DF8];
      fputc(80, *MEMORY[0x277D85DF8]);
      if (this[21].i16[5] >= 1)
      {
        v13 = 0;
        do
        {
          fprintf(*v12, " %.0f", *(this[3].i64[0] + 4 * v13++));
        }

        while (v13 < this[21].i16[5]);
      }

      fputc(10, *v12);
    }

    v14 = this[21].i16[5];
    v15 = this[3].i64[1];
    this[3].i64[0] += 4 * v14;
    if (v15)
    {
      this[3].i64[1] = v15 + 4 * v14;
    }
  }

  if (this[9].i8[5] == 1)
  {
    MTFESpeechIterator::operator++(&this[11].i64[1]);
  }

  return 1;
}

void MTFEFrameFiller::InitControls(int64x2_t *this)
{
  this[5].i8[0] = 1;
  v2 = this[15].i64[0];
  if ((*(v2 + 74) & 0xF) != 0)
  {
    v3 = this[13].i64[1];
    this[17].i64[1] = v3;
    this[5].i8[1] = 2;
    ++this[9].i16[0];
    MEOWVectorBase::Append(this[7].i64);
    *(this[7].i64[0] + 8 * this[8].i64[0] - 8) = v3;
    MTFECommands::Visit(this[13].i64[1] + 112, this);
    v2 = this[15].i64[0];
  }

  v4 = this[13].i64[1];
  if (v2 == *(*(v4 + 24) + 24))
  {
    v5 = this[5].i8[0] | this[5].i8[1];
    this[5].i8[0] = v5;
    this[5].i8[1] = 0;
    if (v4 == *(*(*(this[12].i64[0] + 24) + 24) + 24))
    {
      this[5].i8[0] = v5 | 4;
    }
  }

  if (this[9].i8[7] == 1)
  {
    v6 = this[9].u8[11];
    if (this[9].i8[11])
    {
      if (v6 == 2)
      {
        if ((this[5].i8[0] & 4) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (v6 != 1 || (this[5].i8[0] & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    this[9].i8[8] = 1;
  }

LABEL_14:
  v7 = (*(v2 + 64) * 5.0);
  v8 = *(v2 + 58);
  v9 = *(MEMORY[0x277D65548] + v8);
  if (v9 == 255)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  (*(*this[5].i64[1] + 48))(this[5].i64[1], *(MEMORY[0x277D65540] + v8), v10, 0);
  if (v9 != 255)
  {
    (*(*this[5].i64[1] + 48))(this[5].i64[1], v9, v7, (v7 / 2));
  }

  v11 = this[1].i64[0];
  if (*(v11 + 50) == 1 && (*(this[15].i64[0] + 75) & 2) != 0)
  {
    v12 = this[10].i64[0];
    v13 = this[10].i64[1];
    this[24].i64[0] = bswap32(*v12);
    v14 = *(v11 + 240);
    if (v13 - ((v12 - v14) >> 2) > 1)
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = (v14 + 4);
      if (!v13)
      {
        v15 = 0;
      }
    }

    this[10].i64[0] = v15;
  }

  else if (*(v11 + 49) == 1)
  {
    MTFEFrameFiller::DoNoteScript(this);
  }

  else if (*(v11 + 48) == 1)
  {
    MTFEFrameFiller::DoNote(this);
  }

  MTFEFrameFiller::FillPhonTargets(this);
  if ((this[9].i8[4] & 1) == 0)
  {

    MTFEFrameFiller::InitControlBlocks(this);
  }
}

MTFESpeechElement *MTFEFrameFiller::InterpolateFormants(MTFESpeechElement *this)
{
  v1 = this;
  p_var6 = &this[9].var6;
  v3 = 7;
  do
  {
    v4 = *(v1 + 344);
    if (v4 <= *(p_var6 + 1))
    {
      v7 = *(p_var6 + 2);
      v5 = *(p_var6 + 3);
    }

    else
    {
      v5 = 0;
      v6 = p_var6[4];
      *(p_var6 + 1) = *v6;
      p_var6[4] = (v6 + 2);
      v7 = v6[1];
      *(p_var6 + 2) = v7;
      *p_var6 += *(p_var6 + 3) >> 3;
    }

    v8 = v5 + v7;
    *(p_var6 + 3) = v8;
    v9 = *(p_var6 + 4);
    if (v9)
    {
      *(p_var6 + 4) = v9 - *(p_var6 + 5);
    }

    v10 = v9 + v8;
    if (v4 >= *(p_var6 + 8))
    {
      v11 = *(p_var6 + 6);
      v10 += v11;
      *(p_var6 + 6) = *(p_var6 + 7) + v11;
    }

    v12 = *p_var6 + (v10 >> 3);
    *(p_var6 + 21) = *p_var6 + (v10 >> 3);
    if ((v12 & 0x8000) != 0)
    {
      this = MTBEAbort(*(v1 + 192));
    }

    v13 = *(p_var6 + 9);
    if (v13 >= 1 && *(v1 + 344) < v13)
    {
      *(p_var6 + 21) = *(p_var6 + 10);
    }

    p_var6 += 6;
    --v3;
  }

  while (v3);
  v14 = *(v1 + 344);
  v15 = (v1 + 880);
  for (i = 7; i != 15; ++i)
  {
    v17 = v15[4];
    if (v17)
    {
      v15[4] = v17 - v15[5];
    }

    v18 = *v15 + (v17 >> 3);
    if (v14 >= v15[8])
    {
      v19 = v15[6];
      v18 += v19 >> 3;
      v15[6] = v15[7] + v19;
    }

    v15[21] = v18;
    v20 = v15[9];
    if (v20 >= 1)
    {
      if (v14 < v20)
      {
        v21 = v15[10];
LABEL_27:
        v15[21] = v21;
        goto LABEL_28;
      }

      if (i >= 9 && v20 + 1 == v14 && v18 >= 11)
      {
        v21 = v18 - 10;
        goto LABEL_27;
      }
    }

LABEL_28:
    v15 += 24;
  }

  return this;
}

uint64_t MTFEFrameFiller::InterpolatePitch(MTFEFrameFiller *this)
{
  if (!*(this + 6))
  {
    MTFEFrameFiller::ProcessPitchEvents(this);
  }

  v2 = *(this + 2);
  if (*(v2 + 48))
  {
    if (*(this + 513) == 1)
    {
      v3 = *(v2 + 190) << 16;
      *(this + 50) = v3;
      *(this + 513) = 0;
LABEL_24:
      *(this + 511) = 0;
      goto LABEL_25;
    }

    if (*(this + 511))
    {
      v7 = *(this + 51);
      if (v7 < 1)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          v3 = *(v2 + 190) << 16;
          goto LABEL_23;
        }

        v3 = *(this + 50) + v7;
        *(this + 50) = v3;
        v8 = *(v2 + 190);
        if (v8 <= v3 >> 16)
        {
          goto LABEL_25;
        }

LABEL_11:
        v3 = v8 << 16;
LABEL_23:
        *(this + 50) = v3;
        goto LABEL_24;
      }

      v3 = *(this + 50) + v7;
      *(this + 50) = v3;
      v8 = *(v2 + 190);
      if (v8 <= v3 >> 16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = *(this + 50);
    }

LABEL_25:
    v13 = v3 >> 16;
    v14 = *(this + 98) + *(this + 116);
    *(this + 49) = *&v14 & 0xFFFFFFLL;
    v15 = MTFEFrameFiller::sSineWave[BYTE2(v14)] - 128;
    v16 = 456;
    if ((*(*(this + 30) + 72) & 0x10) == 0)
    {
      v16 = 448;
    }

    result = v13 + ((*(this + v16) * v15) >> 16);
    goto LABEL_28;
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = *v4;
    *(this + 6) = v4 + 1;
    result = MTBEParam::HzToPitch(v2, (v5 + 0.5));
  }

  else
  {
    result = MTFEFrameFiller::OldNonSingingPitch(this);
  }

  *(this + 190) = result;
  if (*(this + 6))
  {
    goto LABEL_29;
  }

  v9 = *(this + 98) + *(this + 116);
  *(this + 49) = *&v9 & 0xFFFFFFLL;
  v10 = MTFEFrameFiller::sSineWave[BYTE2(v9)] - 128;
  if (MTBEParam::GetUsePostDurMod(*(this + 2)))
  {
    DurModFakeRate = MTBEParam::GetDurModFakeRate(*(this + 2));
  }

  else
  {
    DurModFakeRate = *(*(this + 27) + 178);
  }

  v12 = 456;
  if (DurModFakeRate > 99)
  {
    v12 = 448;
  }

  result = *(this + 190) + ((*(this + v12) * v10) >> 16);
LABEL_28:
  *(this + 190) = result;
LABEL_29:
  if ((result & 0x8000) != 0)
  {
    *(this + 190) = 0;
  }

  ++*(this + 263);
  ++*(this + 261);
  ++*(this + 262);
  return result;
}

uint64_t MTFEFrameFiller::SaveFrame(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((*(result + 148) & 1) == 0)
  {
    v4 = *(result + 586);
    v5 = *(result + 634);
    v6 = *(result + 682);
    v7 = v5 - *(result + 586);
    if (v7 <= 199)
    {
      v4 += (209 - v7) % 0xAu - (209 - v7);
    }

    v8 = *(result + 682) - v5;
    if (v8 <= 599)
    {
      v6 += 10 * ((609 - v8) / 0xAu);
    }

    *(a2 + 8) = MTBEParam::HzToPitch(*(result + 16), v4);
    *(a2 + 10) = MTBEParam::HzToPitch(*(v3 + 16), v5);
    *(a2 + 12) = MTBEParam::HzToPitch(*(v3 + 16), v6);
    *(a2 + 28) = (*(v3 + 472) * *(v3 + 730)) >> 16;
    *(a2 + 30) = (*(v3 + 480) * *(v3 + 778)) >> 16;
    *(a2 + 32) = (*(v3 + 488) * *(v3 + 826)) >> 16;
    result = MTBEParam::HzToPitch(*(v3 + 16), *(v3 + 874));
    *(a2 + 24) = result;
    v9 = *(v3 + 922);
    if (v9 >= 0x3F)
    {
      v9 = 63;
    }

    v10 = v9 >> 1;
    if (*(v3 + 922) < 0)
    {
      v10 = 0;
    }

    *(a2 + 4) = MTFEFrameFiller::sLogToLin[v10];
    v11 = *(v3 + 970);
    if (v11 >= 0x3F)
    {
      v11 = 63;
    }

    v12 = v11 >> 1;
    if (*(v3 + 970) >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    *(a2 + 6) = MTFEFrameFiller::sLogToLin[v13];
    v14 = *(v3 + 1018);
    if (v14 >= 0x3F)
    {
      v14 = 63;
    }

    v15 = v14 >> 1;
    if (*(v3 + 1018) >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(a2 + 14) = MTFEFrameFiller::sLogToLin[v16];
    v17 = *(v3 + 1066);
    if (v17 >= 0x3F)
    {
      v17 = 63;
    }

    v18 = v17 >> 1;
    if (*(v3 + 1066) >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    *(a2 + 16) = MTFEFrameFiller::sLogToLin[v19];
    v20 = *(v3 + 1114);
    if (v20 >= 0x3F)
    {
      v20 = 63;
    }

    v21 = v20 >> 1;
    if (*(v3 + 1114) >= 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(a2 + 18) = MTFEFrameFiller::sLogToLin[v22];
    v23 = *(v3 + 1162);
    if (v23 >= 0x3F)
    {
      v23 = 63;
    }

    v24 = v23 >> 1;
    if (*(v3 + 1162) >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    *(a2 + 20) = MTFEFrameFiller::sLogToLin[v25];
    v26 = *(v3 + 1210);
    if (v26 >= 0x3F)
    {
      v26 = 63;
    }

    v27 = v26 >> 1;
    if (*(v3 + 1210) >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    *(a2 + 22) = MTFEFrameFiller::sLogToLin[v28];
    if (*(v3 + 1258) >= 0x3Fu)
    {
      v29 = 63;
    }

    else
    {
      v29 = *(v3 + 1258);
    }

    v30 = v29 >> 1;
    if (*(v3 + 1258) < 0)
    {
      v30 = 0;
    }

    *(a2 + 26) = MTFEFrameFiller::sLogToLin[v30];
    v31 = *(v3 + 384);
    *(a2 + 40) = *(v3 + 296);
    *(a2 + 48) = v31;
    *(v3 + 384) = -1;
  }

  v32 = *(v3 + 380);
  *a2 = *(v3 + 380);
  *(a2 + 2) = *(v3 + 149);
  if ((MTBEDebugFlags::sMTXDebug & 8) != 0)
  {
    if (*(v3 + 148) == 1)
    {
      return printf("%4d\n");
    }

    else
    {
      v33 = *(a2 + 22);
      v34 = *(a2 + 24);
      v35 = *(a2 + 26);
      v36 = *(a2 + 28);
      v37 = *(a2 + 30);
      v38 = *(a2 + 32);
      v39 = *(a2 + 48);
      v42 = *(a2 + 18);
      v43 = *(a2 + 20);
      v40 = *(a2 + 14);
      v41 = *(a2 + 16);
      return printf("%2d %2d %4d %4d %4d %4d %2d %2d %2d %2d %2d %4d %2d %4d %4d %4d %2d %2ld\n", *(a2 + 4), *(a2 + 6), v32, *(a2 + 8), *(a2 + 10), *(a2 + 12));
    }
  }

  return result;
}

uint64_t MTFEFrameFiller::SkipWord(uint64_t this)
{
  v1 = this;
  v2 = *(this + 216);
  if (*(this + 280) == v2)
  {
    v3 = 0;
    do
    {
      this = MTFEFrameFiller::FillNextFrame(v1, 0);
      v3 |= this ^ 1;
      v2 = *(v1 + 216);
    }

    while (*(v1 + 280) == v2);
    if (v3)
    {
      *(v1 + 151) = 1;
      *(v1 + 155) = 0;
    }
  }

  *(v1 + 280) = v2;
  return this;
}

uint64_t MTFEFrameFiller::PauseAt(uint64_t this, char a2)
{
  *(this + 151) = 1;
  *(this + 155) = a2;
  return this;
}

BOOL MTFEFrameFiller::AtEndOfPhrase(MTFEFrameFiller *this)
{
  v1 = *(this + 35);
  v2 = *(v1 + 32);
  return v1 == *(v2 + 24) && v2 == *(*(v2 + 32) + 24);
}

uint64_t MTFEFrameFiller::DoNoteScript(uint64_t this)
{
  if ((*(*(this + 240) + 72) & 0x10008000) == 0x10000000)
  {
    v1 = *(this + 40);
    v2 = *(this + 16);
    v3 = v2[106];
    v2[106] = v3 + 1;
    v4 = *(v1 + 2 * v3 + 350) << 8;
    v5 = *(v1 + 348) > (v3 + 1) ? v3 + 1 : 0;
    v2[106] = v5;
    if (v4 != 32512)
    {
      v6 = v2[95];
      v7 = (v2[97] + ((5461 * v4) >> 16));
      v8 = v7 & ~(v7 >> 31);
      v2[95] = v8;
      v9 = *(this + 532);
      if (*(this + 532))
      {
        v9 = ((v8 - v6) << 16) / v9;
      }

      *(this + 408) = v9;
      *(this + 511) = 1;
    }
  }

  return this;
}

uint64_t MTFEFrameFiller::DoNote(uint64_t this)
{
  v1 = *(this + 240);
  if (*(v1 + 62) && (*(v1 + 73) & 0x80) == 0)
  {
    v2 = *(this + 16);
    v3 = *(v2 + 190);
    v4 = (*(v2 + 194) + ((5461 * (*(v1 + 62) << 8)) >> 16));
    *(v2 + 190) = v4 & ~(v4 >> 31);
    if (*(this + 532))
    {
      v5 = (((v4 & ~(v4 >> 31)) - v3) << 16) / *(this + 532);
    }

    else
    {
      v5 = 0;
    }

    *(this + 408) = v5;
    *(this + 511) = 1;
  }

  return this;
}

int64x2_t MTFEFrameFiller::FillPhonTargets(int64x2_t *this)
{
  this[21].i16[4] = 0;
  v2 = this[15].i64[0];
  var13 = v2->var13;
  var14 = v2->var14;
  v5 = var13;
  this[21].i16[5] = var13;
  this[21].i16[6] = (var13 * var14);
  result = this[3];
  this[4] = result;
  var7 = v2->var7;
  if (var7)
  {
    this[18].i8[4] = this[18].i8[2];
    v8 = this[20].i64[0];
    v9 = BYTE2(var7[1].var0);
    this[18].i8[2] = v9;
    this[18].i8[3] = BYTE3(var7[1].var0) != 0;
    this[20].i64[0] = LODWORD(var7[1].var3);
    this[20].i64[1] = v8;
  }

  else
  {
    this[18].i16[1] = 0;
    this[18].i8[4] = 0;
    this[20].i64[0] = 0;
    this[20].i64[1] = 0;
    if (this[9].i8[6] == 1)
    {
      this[9].i8[6] = 0;
      if ((this[9].i8[4] & 1) == 0)
      {
        this[79].i32[0] = 0;
        v10 = 1;
        for (i = 285; i != 645; i += 24)
        {
          this->i16[i] = MTFEFrameFiller::GetFirstTarget(this, v2);
          this[79].i32[0] = v10++;
        }
      }
    }

    v9 = 0;
  }

  v12 = MEMORY[0x277D65568];
  v13 = *(MEMORY[0x277D65568] + 4 * v9);
  this[17].i64[0] = v2;
  var9 = v2->var9;
  this[18].i8[0] = var9;
  this[18].i8[1] = v2->var10 != 0;
  v15 = *(v12 + 4 * var9);
  this[18].i64[1] = v15;
  this[19].i64[0] = v13;
  var6 = v2->var6;
  if (!var6)
  {
    var6 = &MTFEPhonemeFlags::sSIL;
  }

  v17 = BYTE2(var6[1].var0);
  this[18].i8[5] = v17;
  this[18].i8[6] = BYTE3(var6[1].var0) != 0;
  this[19].i64[1] = *(v12 + 4 * v17);
  var3_low = LODWORD(var6[1].var3);
  v19 = MTFEPhonemeDuration::sMaxDur[var9];
  this[21].i64[0] = var3_low;
  this[21].i16[7] = v19 / 5;
  if (var9 && (v15 & 0x400) == 0)
  {
    v20 = (v5 << 16) / (((26215 * v19) >> 17) + ((26215 * v19) >> 31));
    this[22].i64[0] = v20;
    this[22].i64[1] = (v20 >> 1) + 0x8000;
    this[23].i64[0] = (v20 >> 1) + 26218;
  }

  this[92].i64[0] = this[79].i64 + 4;
  if ((this[9].i8[4] & 1) == 0)
  {
    result = xmmword_257B895C0;
    v21 = xmmword_257B895D0;
    v22 = xmmword_257B895E0;
    v23 = xmmword_257B895F0;
    v24 = &this[35].i16[1];
    v25 = 16;
    v26 = vdupq_n_s64(0xFuLL);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v26, v23)), *result.i8), *result.i8).u8[0])
      {
        *v24 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v23)), *&result), *&result).i8[1])
      {
        v24[24] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v22))), *&result).i8[2])
      {
        v24[48] = 0;
        v24[72] = 0;
      }

      if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v21)), *&result)).i32[1])
      {
        v24[96] = 0;
      }

      if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v21)), *&result)).i8[5])
      {
        v24[120] = 0;
      }

      if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&result)))).i8[6])
      {
        v24[144] = 0;
        v24[168] = 0;
      }

      v21 = vaddq_s64(v21, v27);
      v22 = vaddq_s64(v22, v27);
      v23 = vaddq_s64(v23, v27);
      v24 += 192;
      result = vaddq_s64(result, v27);
      v25 -= 8;
    }

    while (v25);
  }

  return result;
}

uint64_t MTFEFrameFiller::InitControlBlocks(MTFEFrameFiller *this)
{
  v2 = 0;
  v3 = this + 544;
  *(this + 316) = 0;
  do
  {
    v4 = &v3[48 * v2];
    v5 = MTFEFrameFiller::sControlType[v2];
    v6 = *(v4 + 13);
    *(v4 + 12) = *(v4 + 13);
    v7 = *(this + 30);
    if (v7->var6)
    {
      var6 = v7->var6;
    }

    else
    {
      var6 = &MTFEPhonemeFlags::sSIL;
    }

    FirstTarget = MTFEFrameFiller::GetFirstTarget(this, var6);
    *(v4 + 11) = FirstTarget;
    *(v4 + 3) = 0;
    Target = MTFEFrameFiller::GetTarget(this, v7);
    *v4 = Target;
    if (Target > -2)
    {
      *(v4 + 2) = 0;
      *(v4 + 1) = v7->var13;
      if (!v5)
      {
        if (v2 == 1)
        {
          v11 = 16375;
        }

        else
        {
          v11 = 9825;
        }

        if ((v7->var15 & 0x1C00) != 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = 6550;
        }

        Target += (v12 * (((FirstTarget + v6) >> 1) - Target)) >> 16;
        *v4 = Target;
      }

      *(v4 + 13) = Target;
      if (!v5)
      {
LABEL_17:
        *(v4 + 11) += (6550 * (*(v4 + 13) - *(v4 + 11))) >> 16;
      }
    }

    else
    {
      MTFEFrameFiller::GetDiphthongs(this, Target & 0x7FFF);
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    *(this + 189) = (*v4 + *(v4 + 12)) >> 1;
    *(this + 188) = 6;
    MTFEFrameFiller::HeadRules(this);
    *(v4 + 4) = 0;
    v13 = *(this + 188);
    if (v13 >= 1)
    {
      v14 = 8 * (*(this + 189) - *v4);
      *(v4 + 4) = v14;
      if ((v14 & 0xFFF8) != 0)
      {
        v15 = v14 / v13;
        *(v4 + 5) = v15;
        *(v4 + 4) = v15 * v13;
      }
    }

    *(this + 189) = (*(v4 + 11) + *(v4 + 13)) >> 1;
    *(this + 188) = 5;
    MTFEFrameFiller::TailRules(this);
    *(v4 + 3) = 0;
    v16 = *(this + 188);
    if (v16 >= 1)
    {
      v17 = *(this + 189);
      v18 = *(v4 + 13);
      if (v17 != v18)
      {
        *(v4 + 7) = 8 * (v17 - v18) / v16;
      }
    }

    v19 = *(this + 316);
    v2 = v19 + 1;
    *(this + 316) = v19 + 1;
  }

  while (v19 < 14);

  return MTFEFrameFiller::InsertBurst(this);
}

uint64_t MTFEFrameFiller::GetFirstTarget(MTFEFrameFiller *this, MTFEPhoneme *a2)
{
  Target = MTFEFrameFiller::GetTarget(this, a2);
  v5 = Target;
  if (Target <= -2)
  {
    v5 = *(*(*(this + 185) + 8) + 2 * (Target & 0x7FFF));
    if (!MTFEFrameFiller::sControlType[*(this + 316)])
    {
      v5 += MTFEFrameFiller::AdjustColoredTarget(this, a2, 0);
    }
  }

  return v5;
}

uint64_t MTFEFrameFiller::GetTarget(MTFEFrameFiller *this, MTFEPhoneme *a2)
{
  v2 = *(this + 316);
  v3 = MTFEFrameFiller::sControlType[v2];
  var9 = a2->var9;
  var7 = a2->var7;
  if (!var7)
  {
    var7 = &MTFEPhonemeFlags::sSIL;
  }

  v6 = BYTE2(var7[1].var0);
  if (a2->var6)
  {
    var6 = a2->var6;
  }

  else
  {
    var6 = &MTFEPhonemeFlags::sSIL;
  }

  v8 = BYTE2(var6[1].var0);
  v9 = *(MEMORY[0x277D65568] + 4 * a2->var9);
  v10 = *(MEMORY[0x277D65568] + 4 * v6);
  LOWORD(v11) = -1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      var15 = a2->var15;
      if (v2 == 7)
      {
        v20 = *(*(*(this + 185) + 32) + var9);
        v21 = v20 - 20;
        if ((v10 & 0x40) != 0)
        {
          v21 = v20 - 6;
        }

        if ((var15 & 0x4000) != 0)
        {
          v20 = v21;
        }

        v23 = (var15 & 0x1400) != 0 || var9 != 34;
        if ((v10 & 4) == 0)
        {
          v23 = 1;
        }

        if ((((v10 & 4) == 0) & (v9 >> 12)) != 0)
        {
          v20 = 0;
        }

        if (v23)
        {
          LOWORD(v11) = v20;
        }

        else
        {
          LOWORD(v11) = 54;
        }

        return v11;
      }

      if (var9 == 34)
      {
        if (MTFEFrameFiller::sRankFwd[v8])
        {
          v24 = 62;
        }

        else
        {
          v24 = 58;
        }

        LOWORD(v11) = v24 - ((var15 & 0x1C00) == 0);
        return v11;
      }
    }

    else
    {
      if (v3 != 4)
      {
        return v11;
      }

      v14 = MTFEFrameFiller::sNoiseIndex[var9];
      if (v14 != 0xFFFF)
      {
        if (BYTE2(var6[1].var0))
        {
          v15 = &MTFEFrameFiller::sRankFwd[v8];
        }

        else
        {
          v15 = &MTFEFrameFiller::sRankBkwd + v6;
        }

        v16 = *v15;
        if (v16 == 4)
        {
          LOBYTE(v16) = 2;
        }

        v17 = *(*(*(this + 185) + 24) + 2 * (v2 + 6 * v16 + v14 - 9));
        if (((v17 > 3) & (LODWORD(var6[1].var3) >> 14)) != 0)
        {
          LOWORD(v11) = v17 - 4;
        }

        else
        {
          LOWORD(v11) = v17;
        }

        return v11;
      }
    }

    LOWORD(v11) = 0;
    return v11;
  }

  if (v3 < 2)
  {
    v12 = *(this + 185);
    v13 = *(*v12 + 8 * v2);
    LODWORD(v11) = *(v13 + 2 * var9);
    if (v11 != 0xFFFF)
    {
      return v11;
    }

    LODWORD(v11) = *(v13 + 2 * v8);
    if (v11 == 0xFFFF)
    {
      v11 = var6->var6;
      if (!v11)
      {
        v11 = &MTFEPhonemeFlags::sSIL;
      }

      LODWORD(v11) = *(v13 + 2 * *(v11 + 58));
      if (v11 == 0xFFFF)
      {
        LODWORD(v11) = *(v13 + 2 * v6);
        if (v11 == -1)
        {
          v11 = &MTFEFrameFiller::sDefaultTarg + 2 * v2;
        }

        else
        {
          if ((v11 & 0x80000000) == 0)
          {
LABEL_59:
            v25 = v9 & 0xC00;
            if ((v10 & 1) != 0 && v25 == 1024 && v2 == 0)
            {
              LOWORD(v11) = v11 + 40;
            }

            if ((var9 == 36 || var9 == 29) && v2 == 4 && !MTFEFrameFiller::sRankFwd[v8])
            {
              LOWORD(v11) = v11 + 60;
            }

            if (var9 <= 0x25 && ((1 << var9) & 0x3020000000) != 0 && v2 == 4 && ((*(MEMORY[0x277D65568] + 4 * v6) & 0x80000) != 0 || (*(MEMORY[0x277D65568] + 4 * v8) & 0x40000) != 0))
            {
              LOWORD(v11) = 1225;
            }

            return v11;
          }

          v11 = v12[1] + 2 * ((v11 & 0x7FFF) + 2);
        }

        LOWORD(v11) = *v11;
      }
    }

    if (v11 <= -2)
    {
      LOWORD(v11) = *(v12[1] + 2 * (v11 & 0x7FFF));
    }

    goto LABEL_59;
  }

  if (v3 == 2)
  {
    v18 = *(this + 5);
    if ((v9 & 0x40) != 0)
    {
      LOWORD(v11) = *(v18 + 34);
    }

    else
    {
      LOWORD(v11) = *(v18 + 32);
    }
  }

  return v11;
}

float MTFEFrameFiller::GetDiphthongs(MTFEFrameFiller *this, int a2)
{
  v3 = *(this + 316);
  v4 = this + 48 * v3;
  v5 = MTFEFrameFiller::sControlType[v3];
  v6 = *(this + 184);
  *(v4 + 72) = v6;
  v7 = *(*(this + 185) + 8);
  v8 = *(v7 + 2 * a2);
  v9 = *(v7 + 2 * a2);
  v10 = *(v7 + 2 * (a2 + 1));
  v11 = *(v7 + 2 * (a2 + 2));
  v12 = *(v7 + 2 * (a2 + 3));
  v13 = v11;
  v14 = *(this + 44);
  v15 = *(this + 175);
  v16 = ((((v14 * v10) >> 8) * v15 * 0xA3D70A3D70A3D70BLL) >> 64) + ((v14 * v10) >> 8) * v15;
  v17 = (((v16 >> 63) + (v16 >> 6)) >> 8);
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((((v14 * v12) >> 8) * v15 * 0xA3D70A3D70A3D70BLL) >> 64) + ((v14 * v12) >> 8) * v15;
  v20 = (((v19 >> 63) + (v19 >> 6)) >> 8);
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (!v5)
  {
    v22 = *(v4 + 284);
    v23 = (6550 * (v22 - v8)) >> 16;
    if (v22 <= 0)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v25 = *(this + 30);
    v9 += MTFEFrameFiller::AdjustColoredTarget(this, v25, 0) + v24;
    v26 = *(v4 + 283);
    if (v26 <= 0)
    {
      LOWORD(v27) = 0;
    }

    else
    {
      v27 = (6550 * (v26 - v11)) >> 16;
    }

    v13 += MTFEFrameFiller::AdjustColoredTarget(this, v25, 1) + v27;
  }

  LOWORD(v28) = v21 - v18;
  if (v21 != v18)
  {
    v28 = 8 * (v13 - v9) / v28;
  }

  *(v4 + 272) = v9;
  *(v4 + 273) = v18;
  *(v4 + 274) = 0;
  *v6 = v21;
  result = *(*(this + 30) + 64);
  v6[1] = v28;
  v6[2] = result;
  *(this + 184) = v6 + 4;
  v6[3] = 0;
  *(v4 + 285) = v13;
  return result;
}

_DWORD *MTFEFrameFiller::HeadRules(_DWORD *this)
{
  v1 = this;
  v2 = this[316];
  v3 = &this[12 * v2];
  v4 = MTFEFrameFiller::sControlType[v2];
  if (v4 > 2)
  {
    if ((v4 - 3) >= 2)
    {
      goto LABEL_131;
    }

    v6 = *(v3 + 272);
    v7 = *(this + 189);
    if (v7 < (v6 - 10) || (*(this + 305) & 0x10) != 0 || *(this + 290) == 53)
    {
      LOWORD(v7) = v6 - 10;
      *(this + 189) = v6 - 10;
      v8 = *(this + 37);
      if ((v8 & 0x400) == 0)
      {
        *(this + 188) = 4;
      }

      if (v2 == 7)
      {
        if ((v8 & 4) != 0 && !*(this + 290))
        {
          LOWORD(v7) = v6 - 18;
          *(this + 189) = v6 - 18;
          *(this + 188) = 9;
        }

        v9 = *(this + 38);
        if ((v9 & 0x1400) != 0)
        {
          if ((v9 & 0x1000) != 0)
          {
            v10 = -5;
          }

          else
          {
            v10 = -4;
          }

          LOWORD(v7) = v10 + v6;
          *(this + 189) = v7;
        }
      }
    }

    else
    {
      v8 = *(this + 37);
    }

    v28 = *(this + 38);
    if ((v8 & 4) != 0 && (v28 & 0x40) != 0)
    {
      *(this + 188) = 0;
    }

    if (v2 == 7 && (v8 & 0x40) != 0 && (v28 & 4) != 0)
    {
      *(this + 188) = 0;
    }

    v29 = *(v3 + 284);
    if (v7 < (v29 - 10))
    {
      *(this + 189) = v29 - 13;
      if (!*(this + 288))
      {
        *(this + 188) = 14;
      }
    }

    if (v2 != 7)
    {
      if (v2 != 8)
      {
        if (v2 != 10 || (v8 & 0x1000000) == 0)
        {
          goto LABEL_131;
        }

        *(this + 188) = *(this + 173) - 2;
        v16 = v6 - 30;
        goto LABEL_85;
      }

      if ((v28 & 0x404) != 4)
      {
        goto LABEL_131;
      }

      v30 = *(this + 288);
      if (v30 > 0x2C)
      {
        goto LABEL_131;
      }

      if (((1 << v30) & 0x154000000000) != 0)
      {
        v31 = 3145737;
      }

      else
      {
        if (*(this + 288))
        {
          goto LABEL_131;
        }

        v31 = 3407888;
      }

      this[94] = v31;
      goto LABEL_131;
    }

    if ((v8 & 0x200) == 0)
    {
      goto LABEL_131;
    }

    LOWORD(v15) = 2;
    goto LABEL_130;
  }

  if (!v4)
  {
    v11 = *(this + 37);
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_57;
    }

    if ((v11 & 0x80) != 0)
    {
      *(this + 189) = (*(this + 189) + *(v3 + 284)) >> 1;
      v22 = 6;
    }

    else
    {
      *(this + 188) = 9;
      if ((this[76] & 0x80) == 0)
      {
        if (*(this + 288) != 34)
        {
          goto LABEL_57;
        }

        v12 = (*(this + 189) + *(v3 + 284)) >> 1;
        goto LABEL_28;
      }

      v34 = (*(this + 189) + *(v3 + 284)) >> 1;
      *(this + 189) = v34;
      v35 = *(this + 290);
      if (v35 != 32)
      {
        if (v35 == 33 && !v2)
        {
          LOWORD(v12) = v34 + 80;
LABEL_28:
          *(this + 189) = v12;
        }

LABEL_57:
        if (!*(this + 288))
        {
          *(this + 189) = *(v3 + 284);
          *(this + 188) = *(this + 173);
          v25 = *(this + 38);
          goto LABEL_126;
        }

        v23 = *(this + 30);
        var7 = v23->var7;
        if (var7)
        {
          MTFEFrameFiller::GetLocus(this, var7, v23, 0);
          this = MTFEFrameFiller::GetLocus(v1, *(v1 + 30), *(*(v1 + 30) + 48), 1);
        }

        v25 = *(v1 + 38);
        if ((v25 & 0x1004) == 0x1000 && !v1[316])
        {
          *(v1 + 189) += 100;
        }

        v26 = *(v1 + 37);
        if ((v26 & 0x400) != 0)
        {
          if ((v26 & 0x1000) != 0)
          {
            v27 = *(v1 + 173);
          }

          else if (v1[316])
          {
            v27 = 6;
          }

          else
          {
            v27 = 4;
          }

          *(v1 + 188) = v27;
        }

        if ((v26 & 0x40) == 0)
        {
          goto LABEL_126;
        }

        v32 = v1[316];
        if (v32)
        {
          v33 = *(v1 + 173);
        }

        else
        {
          v33 = 0;
        }

        *(v1 + 188) = v33;
        v36 = *(v1 + 288);
        if (v36 != 36)
        {
          if (v36 == 35)
          {
            if (v32 != 1 || (v25 & 0x80000) == 0)
            {
              goto LABEL_126;
            }

            v37 = *(v1 + 189) - 150;
            goto LABEL_125;
          }

          if (v36 != 29)
          {
            goto LABEL_126;
          }
        }

        if (MTFEFrameFiller::sRankBkwd[*(v1 + 290)])
        {
LABEL_126:
          if ((v25 & 0x400) != 0)
          {
            goto LABEL_131;
          }

          if (MTFEFrameFiller::sRankBkwd[*(v1 + 290)] == 3)
          {
            goto LABEL_131;
          }

          v39 = *(v1 + 188);
          if (v39 < 1)
          {
            goto LABEL_131;
          }

          v15 = ((v1[90] * v39) >> 16) + 1;
LABEL_130:
          *(v1 + 188) = v15;
          goto LABEL_131;
        }

        if (v32 == 2)
        {
          v38 = *(v1 + 189);
        }

        else
        {
          if (v32 != 1)
          {
            goto LABEL_126;
          }

          v38 = *(v1 + 189);
          if ((v25 & 0x80000) != 0)
          {
            v37 = v38 - 200;
LABEL_125:
            *(v1 + 189) = v37;
            goto LABEL_126;
          }
        }

        v37 = v38 - 100;
        goto LABEL_125;
      }

      if (!v2)
      {
        goto LABEL_57;
      }

      v22 = 14;
    }

    *(this + 188) = v22;
    goto LABEL_57;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_131;
    }

    v5 = *(this + 37);
    if ((this[76] & 0x40) == 0)
    {
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_36;
    }

    if ((v5 & 0x40) != 0)
    {
LABEL_36:
      v16 = *(*(this + 5) + 34);
LABEL_85:
      *(this + 189) = v16;
      goto LABEL_131;
    }

    *(this + 189) = *(*(this + 5) + 32) + ((*(*(this + 5) + 34) - *(*(this + 5) + 32)) >> 1);
    LOWORD(v15) = 16;
    goto LABEL_130;
  }

  v13 = *(this + 37);
  if ((v13 & 4) != 0)
  {
    if (v2 == 3 && (*(this + 38) & 4) == 0)
    {
      *(this + 188) = 10;
      *(this + 189) = *(v3 + 272) + (*(this + 272) >> 3);
      goto LABEL_39;
    }

    v14 = 8;
  }

  else
  {
    v14 = 4;
  }

  *(this + 188) = v14;
LABEL_39:
  v17 = *(this + 290);
  if (!*(this + 290))
  {
    v18 = *(v3 + 272) + 200;
    goto LABEL_46;
  }

  if (*(this + 288))
  {
    goto LABEL_48;
  }

  *(this + 189) = *(v3 + 284) + 200;
  if ((*(MEMORY[0x277D65568] + 4 * *(this + 292)) & 4) != 0 && v2 == 3 && (*(this + 40) & 0x4000) != 0)
  {
    v18 = 250;
LABEL_46:
    *(this + 189) = v18;
  }

  *(this + 188) = 10;
LABEL_48:
  if ((this[76] & 0x40) == 0)
  {
    goto LABEL_95;
  }

  v19 = *(v3 + 272);
  *(this + 189) = v19;
  if (v2 == 3)
  {
    v20 = 20;
    v21 = 70;
    goto LABEL_94;
  }

  if (v2 == 4 && (v17 == 36 || v17 == 29) && MTFEFrameFiller::sRankFwd[*(this + 288)])
  {
    v20 = 12;
    v21 = 60;
LABEL_94:
    *(this + 189) = v19 + v21;
    *(this + 188) = v20;
  }

LABEL_95:
  if ((v13 & 0x40) != 0)
  {
    *(this + 188) = 0;
  }

LABEL_131:
  v40 = *(v1 + 188);
  v41 = *(v1 + 173);
  if (v40 > v41)
  {
    *(v1 + 188) = *(v1 + 173);
    v40 = v41;
  }

  if (v40 <= 26)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return this;
    }

    v42 = 0;
  }

  else
  {
    v42 = 26;
  }

  *(v1 + 188) = v42;
  return this;
}

_DWORD *MTFEFrameFiller::TailRules(_DWORD *this)
{
  v1 = this;
  v2 = this[316];
  v3 = &this[12 * v2 + 136];
  v4 = MTFEFrameFiller::sControlType[v2];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 == 2 && (this[78] & 0x40) != 0 && (this[74] & 0x40) == 0)
        {
          *(this + 189) = *(*(this + 5) + 34);
          LOWORD(v2) = 16;
LABEL_133:
          *(v1 + 188) = v2;
          goto LABEL_134;
        }

        goto LABEL_134;
      }

      v16 = *(this + 37);
      if ((v16 & 4) != 0)
      {
        *(this + 188) = 8;
        if (v2 == 3 && (*(this + 39) & 4) == 0)
        {
          *(this + 188) = 10;
          *(this + 189) = *(this + 357) + (*(this + 272) >> 3);
        }
      }

      else
      {
        *(this + 188) = 4;
      }

      v21 = *(this + 293);
      if (*(this + 293))
      {
        if (*(this + 288))
        {
          goto LABEL_72;
        }

        v22 = 22;
      }

      else
      {
        v22 = 26;
      }

      *(this + 189) = *(v3 + v22) + 200;
      *(this + 188) = 10;
LABEL_72:
      if ((this[78] & 0x40) == 0)
      {
        goto LABEL_86;
      }

      v23 = HIWORD(this[12 * v2 + 142]);
      *(this + 189) = v23;
      if (v2 == 3)
      {
        v24 = 20;
        v25 = 100;
      }

      else
      {
        if (v2 != 4 || v21 != 36 && v21 != 29 || !MTFEFrameFiller::sRankFwd[*(this + 288)])
        {
LABEL_86:
          if ((v16 & 0x40) != 0)
          {
            *(this + 188) = 0;
          }

          goto LABEL_134;
        }

        v24 = 12;
        v25 = 60;
      }

      *(this + 189) = v23 + v25;
      *(this + 188) = v24;
      goto LABEL_86;
    }

    v14 = *(this + 37);
    if ((v14 & 0x10) != 0)
    {
      *(this + 188) = 9;
      if ((v14 & 0x80) != 0)
      {
        *(this + 189) = (*(this + 189) + SHIWORD(this[12 * v2 + 142])) >> 1;
        if ((this[78] & 0x80) != 0)
        {
          v26 = 8;
        }

        else
        {
          v26 = 4;
        }

        goto LABEL_91;
      }

      if ((this[78] & 0x80) == 0)
      {
        if (*(this + 293) != 34)
        {
          goto LABEL_96;
        }

        v15 = (*(this + 189) + SHIWORD(this[12 * v2 + 142])) >> 1;
        goto LABEL_95;
      }

      if (v2 == 2)
      {
        v26 = 12;
LABEL_91:
        *(this + 188) = v26;
        goto LABEL_96;
      }

      if (!v2 && *(this + 293) == 33)
      {
        LOWORD(v15) = *(this + 189) + 80;
LABEL_95:
        *(this + 189) = v15;
      }
    }

LABEL_96:
    if (!*(this + 293))
    {
      *(this + 188) = 0;
      goto LABEL_115;
    }

    v28 = *(this + 30);
    if (v28->var6)
    {
      var6 = v28->var6;
    }

    else
    {
      var6 = &MTFEPhonemeFlags::sSIL;
    }

    MTFEFrameFiller::GetLocus(this, var6, v28, 1);
    v30 = *(v1 + 30);
    if (v30->var6)
    {
      v31 = v30->var6;
    }

    else
    {
      v31 = &MTFEPhonemeFlags::sSIL;
    }

    this = MTFEFrameFiller::GetLocus(v1, v30, v31, 0);
    v14 = *(v1 + 37);
    if ((v14 & 0x400) != 0)
    {
      v32 = v1[316];
      v33 = v32 ? 6 : 4;
      *(v1 + 188) = v33;
      if ((v14 & 0x1000) != 0)
      {
        *(v1 + 188) = *(v1 + 173);
        if ((v14 & 4) == 0 && !v32)
        {
          *(v1 + 189) += 100;
        }
      }
    }

    if ((v14 & 0x40) != 0)
    {
      v34 = v1[316];
      if (v34)
      {
        v35 = *(v1 + 173);
      }

      else
      {
        v35 = 0;
      }

      *(v1 + 188) = v35;
      v36 = *(v1 + 288);
      if (v36 == 36)
      {
LABEL_123:
        if (MTFEFrameFiller::sRankFwd[*(v1 + 293)])
        {
          goto LABEL_115;
        }

        if (v34 == 2)
        {
          v37 = *(v1 + 189) - 100;
          goto LABEL_142;
        }

        if (v34 == 1)
        {
          v38 = *(v1 + 189);
          *(v1 + 189) = v38 - 100;
          if ((*(v1 + 314) & 4) != 0)
          {
            v37 = v38 - 200;
            goto LABEL_142;
          }
        }

        goto LABEL_115;
      }

      if (v36 != 35)
      {
        if (v36 != 29)
        {
          goto LABEL_115;
        }

        goto LABEL_123;
      }

      if (v34 == 1 && (*(v1 + 314) & 4) != 0)
      {
        v37 = *(v1 + 189) - 150;
LABEL_142:
        *(v1 + 189) = v37;
      }
    }

LABEL_115:
    if ((v14 & 0x400) == 0 && MTFEFrameFiller::sRankFwd[*(v1 + 293)] != 3)
    {
      v2 = *(v1 + 188);
      if (v2 >= 1)
      {
        LODWORD(v2) = ((v1[92] * v2) >> 16) + 1;
        goto LABEL_133;
      }
    }

    goto LABEL_134;
  }

  if ((v4 - 3) >= 2)
  {
    goto LABEL_134;
  }

  v5 = SHIWORD(this[12 * v2 + 141]);
  v6 = v5 - 10;
  v7 = *(this + 189);
  if (v7 < (HIWORD(this[12 * v2 + 141]) - 10))
  {
    v7 = v6;
    *(this + 189) = v6;
    if (!*(this + 288))
    {
      *(this + 188) = 14;
    }
  }

  if (v7 < v5 && v2 == 7)
  {
    HIDWORD(v10) = *(this + 288) - 39;
    LODWORD(v10) = HIDWORD(v10);
    v9 = v10 >> 1;
    if (v9 >= 4 && v9 != 7)
    {
      *(this + 188) = 0;
      v27 = *(this + 37);
      if ((v27 & 0x1001000) != 0)
      {
        if ((v27 & 4) != 0)
        {
          *(this + 189) = HIWORD(this[12 * v2 + 142]) - 3;
          LOWORD(v2) = 9;
        }

        else
        {
          LOWORD(v2) = 0;
        }

        goto LABEL_133;
      }
    }
  }

  v12 = *(this + 37);
  if ((v12 & 4) != 0 && (this[78] & 0x40) != 0)
  {
    *(this + 188) = 0;
  }

  if ((v12 & 0x40) != 0)
  {
    if ((v12 & 0x400) != 0 || (*(this + 39) & 4) == 0 || (*(this + 337) & 0x40) != 0)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    *(this + 188) = v13;
  }

  v17 = HIWORD(this[12 * v2 + 142]);
  v18 = v17 - 10;
  if ((v12 & 0x200) != 0)
  {
    *(this + 188) = 3;
    if ((v12 & 0x1000) != 0 || *(this + 288) - 55 <= 2)
    {
      v18 = v17;
    }
  }

  if (v7 < v18)
  {
    LOWORD(v7) = v18 - 3;
    *(this + 189) = v18 - 3;
    *(this + 188) = 4;
  }

  if (v2 == 7 && (v7 < v18 || v18 >= 1 && (*(this + 337) & 0x40) != 0))
  {
    *(this + 189) = v18 + 3;
    if (!*(this + 293) || (*(this + 337) & 0x40) != 0)
    {
      *(this + 188) = 15;
    }
  }

  v19 = *(this + 293);
  if (v19 >= 0x2E)
  {
    if (v2 == 7 && (v12 & 0x40) != 0)
    {
      goto LABEL_134;
    }

    *(this + 188) = 0;
  }

  if (v2 == 8)
  {
    v20 = *(this + 288);
    if (v20 <= 0x2C && ((1 << v20) & 0x154000000000) != 0 && (*(this + 39) & 0x404) == 4)
    {
      this[94] = 3407880;
    }

    if ((v12 & 1) != 0 && !v19)
    {
      this[94] = 3407898;
    }
  }

LABEL_134:
  v39 = *(v1 + 188);
  v40 = *(v1 + 173);
  if (v39 > v40)
  {
    *(v1 + 188) = *(v1 + 173);
    v39 = v40;
  }

  if (v39 < 27)
  {
    *(v3 + 16) = v40 - v39;
    if (v39 < 0)
    {
      *(v1 + 188) = 0;
    }
  }

  else
  {
    *(v1 + 188) = 26;
    *(v3 + 16) = v40 - 26;
  }

  return this;
}

uint64_t MTFEFrameFiller::InsertBurst(uint64_t this)
{
  v1 = *(this + 296);
  if ((v1 & 0x200) != 0)
  {
    v2 = 103 * MTFEFrameFiller::sBurstDur[*(this + 288)];
    v3 = ((v2 >> 15) & 1) + (v2 >> 9);
    if ((*(this + 296) & 0x1004) == 0x1000 && (*(this + 312) & 0x1040) != 0)
    {
      v3 >>= 1;
      if ((*(this + 337) & 0x14) != 0)
      {
        LOWORD(v3) = 0;
      }
    }

    v4 = *(this + 346) - v3;
    v5 = v4;
    if (v4 >= 16)
    {
      v5 = 16;
    }

    if ((v1 & 0x1000000) != 0)
    {
      v4 = v5;
    }

    v6 = (this + 996);
    v7 = 6;
    do
    {
      *(v6 - 1) = v4;
      *v6 = 0;
      v6 += 24;
      --v7;
    }

    while (v7);
  }

  v8 = *(this + 304);
  if ((v1 & 0x10) != 0 && (*(this + 304) & 0x1004) == 0x1000)
  {
    *(this + 900) = 0;
    if (MTFEFrameFiller::sRankFwd[*(this + 293)])
    {
      v9 = 54;
    }

    else
    {
      v9 = 48;
    }

    v10 = v9 - 3;
    if (v1)
    {
      v10 = v9;
      v11 = 8;
    }

    else
    {
      v11 = 5;
    }

    *(this + 948) = v10;
    if ((v1 & 0x80) != 0 || *(this + 288) == 12)
    {
      *(this + 948) = v10 + 3;
    }

    if (*(this + 292) == 42)
    {
      v12 = (*(this + 328) & 0xF) == 0;
      v13 = 2;
    }

    else
    {
      v12 = (v1 & 1) == 0;
      v11 = 12;
      v13 = 5;
    }

    if (!v12)
    {
      v13 = v11;
    }

    v14 = *(this + 346);
    if (v13 >= v14)
    {
      LOWORD(v13) = v14 - 1;
    }

    if (v13 > v14 >> 1 && (v1 & 1) != 0 && (*(*(this + 240) + 72) & 0x1400) != 0)
    {
      LOWORD(v13) = *(this + 346) >> 1;
    }

    if ((*(*(this + 240) + 72) & 0x4000) != 0)
    {
      *(this + 948) = 0;
      LOWORD(v13) = v14;
    }

    *(this + 898) = v13;
    *(this + 946) = v13;
    *(this + 706) = v13;
    *(this + 754) = v13;
    *(this + 708) = *(this + 688) + 250;
    *(this + 756) = *(this + 736) + 70;
  }

  v17 = v8 & 4;
  v18 = (~v1 & 0x1004) != 0 || v17 == 0;
  if (!v18 && (*(this + 312) & 4) == 0 && *(this + 288) != 54)
  {
    v19 = *(this + 346);
    *(this + 898) = v19 - 2;
    *(this + 706) = v19;
    *(this + 754) = v19;
    *(this + 802) = v19;
    *(this + 900) = 53;
    *(this + 708) = 1000;
    *(this + 756) = 1000;
    *(this + 804) = 1200;
  }

  return this;
}

uint64_t MTFEFrameFiller::ScaleToPhonDur(MTFEFrameFiller *this, int a2)
{
  v2 = ((*(this + 44) * a2) >> 8) * *(this + 175);
  v3 = ((v2 * 0xA3D70A3D70A3D70BLL) >> 64) + v2;
  v4 = (((v3 >> 63) + (v3 >> 6)) >> 8);
  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t MTFEFrameFiller::AdjustColoredTarget(MTFEFrameFiller *this, MTFEPhoneme *a2, int a3)
{
  var9 = a2->var9;
  var6 = &MTFEPhonemeFlags::sSIL;
  var7 = a2->var7;
  if (!var7)
  {
    var7 = &MTFEPhonemeFlags::sSIL;
  }

  v6 = BYTE2(var7[1].var0);
  if (a2->var6)
  {
    var6 = a2->var6;
  }

  v7 = BYTE2(var6[1].var0);
  v8 = *(MEMORY[0x277D65568] + 4 * a2->var9);
  v9 = *(MEMORY[0x277D65568] + 4 * v6);
  v10 = *(MEMORY[0x277D65568] + 4 * v7);
  v11 = *(this + 316);
  if (v11 == 1)
  {
    v13 = (var9 & 0xFE) != 0xE || a3 <= 0;
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = -250;
    }

    if ((v8 & 0x200000) != 0)
    {
      v15 = -150;
    }

    else
    {
      v15 = v14;
    }

    if (v7 == 27)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if ((*(MEMORY[0x277D65568] + 4 * a2->var9) & 0x200000) != 0)
    {
      v17 = -150;
    }

    else
    {
      v17 = v16;
    }

    v13 = v6 > 0x21;
    v18 = (1 << v6) & 0x248000000;
    if (v13 || v18 == 0)
    {
      v17 = v16;
    }

    if ((v9 & 0x2000) != 0 && var9 == 18)
    {
      v21 = 200;
    }

    else
    {
      v21 = v17;
    }

    v22 = (var9 & 0xFE) == 0x12 && a3 > 0;
    if (v22 && (v10 & 0x2000) != 0)
    {
      v23 = v21 + 200;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 >> 1;
    v25 = v23 + v24;
    if (a3 > 0 && var9 == 19)
    {
      v26 = 400;
    }

    else
    {
      v26 = v25;
    }

    if ((a2->var15 & 0x1C00) != 0)
    {
      v26 = v24;
    }

    v12 = v26;
  }

  else if (v11 == 2)
  {
    v12 = 0;
    if (var9 != 12 && (v8 & 1) != 0)
    {
      if (((v9 | v10) & 0x2000000) != 0)
      {
        v12 = -150;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 >= 400)
  {
    return 400;
  }

  else
  {
    return v12;
  }
}

_DWORD *MTFEFrameFiller::GetLocus(_DWORD *this, MTFEPhoneme *a2, MTFEPhoneme *a3, int a4)
{
  v4 = this[316];
  if (v4 <= 2)
  {
    var9 = a2->var9;
    v6 = MTFEFrameFiller::sRankFwd;
    v7 = a3->var9;
    if (a4)
    {
      v8 = MTFEFrameFiller::sRankFwd;
    }

    else
    {
      v8 = &MTFEFrameFiller::sRankBkwd;
    }

    if (a4)
    {
      v6 = &MTFEFrameFiller::sRankBkwd;
    }

    v9 = v6[v7];
    if (v8[var9] == 3 && v9 != 3)
    {
      v11 = this;
      v12 = *(MEMORY[0x277D65568] + 4 * v7);
      v13 = *(MEMORY[0x277D65568] + 4 * var9);
      if (a4)
      {
        this = MTFEFrameFiller::GetLastTarget(this, a3);
      }

      else
      {
        this = MTFEFrameFiller::GetFirstTarget(this, a3);
      }

      v14 = &MTFEFrameFiller::sBackLoci;
      if (v9 == 1)
      {
        v14 = &MTFEFrameFiller::sMidLoci;
      }

      if (!v9)
      {
        v14 = &MTFEFrameFiller::sFrontLoci;
      }

      v15 = v14[var9];
      if (v15 != 0xFFFF)
      {
        v16 = v15 + 3 * v4;
        v17 = *(*(v11 + 185) + 16);
        v18 = v16 + 2;
        v19 = *(v17 + 2 * (v16 + 1));
        v20 = *(*(v11 + 5) + 38) + *(v17 + 2 * v16);
        LODWORD(v17) = 26215 * *(v17 + 2 * v18);
        v21 = (v17 >> 17) + (v17 >> 31);
        if (v13 & 0x40 | v12 & 0x40000)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21 >> 2;
        }

        *(v11 + 188) = v21 - v22;
        if (v4 == 1 && v9 == 4)
        {
          v19 = (v19 >> 1) + 50;
          if ((v12 & 0x40000) == 0)
          {
            goto LABEL_29;
          }
        }

        else if (v4 != 1 || (v12 & 0x40000) == 0)
        {
          goto LABEL_29;
        }

        v19 = v19 - (v19 >> 2) + 25;
LABEL_29:
        v23 = 1374389535 * (this - v20) * v19;
        *(v11 + 189) = v20 + (v23 >> 37) + (v23 >> 63);
      }
    }
  }

  return this;
}

uint64_t MTFEFrameFiller::GetLastTarget(MTFEFrameFiller *this, MTFEPhoneme *a2)
{
  Target = MTFEFrameFiller::GetTarget(this, a2);
  v5 = Target;
  if (Target <= -2)
  {
    v5 = *(*(*(this + 185) + 8) + 2 * ((Target & 0x7FFFu) + 2));
    if (!MTFEFrameFiller::sControlType[*(this + 316)])
    {
      v5 += MTFEFrameFiller::AdjustColoredTarget(this, a2, 1);
    }
  }

  return v5;
}

uint64_t MTFEFrameFiller::ProcessPitchEvents(uint64_t this)
{
  v1 = *(this + 526);
  v2 = *(this + 528);
  if (v1 >= v2)
  {
    v3 = *(*(this + 8) + 16);
    v4 = *(this + 176);
    do
    {
      if (v4 >= v3)
      {
        return this;
      }

      v6 = *(v4 + 6);
      v4 += 6;
      v5 = v6;
      v7 = *(v4 - 4);
      v8 = *(v4 - 2);
      LOWORD(v1) = v1 - v2;
      *(this + 526) = v1;
      *(this + 176) = v4;
      *(this + 528) = v6;
      if ((v8 & 8) != 0)
      {
        *(this + 416) = 0;
      }

      else
      {
        if ((v8 & 0x10) != 0)
        {
          v9 = *(this + 16);
          *(this + 416) = (*(v9 + 26) - *(v9 + 28)) << 14;
          v10 = *(v9 + 30);
          if (v10 <= 15)
          {
            LOWORD(v10) = v10 + 1;
            *(v9 + 30) = v10;
          }

          *(v9 + 32) = *(v9 + 8 * v10 + 56);
          goto LABEL_15;
        }

        if ((v8 & 2) == 0)
        {
          if ((v8 & 0x20) != 0)
          {
            *(this + 502) += v7;
          }

          else if (v8)
          {
            *(this + 536) = v7;
            *(this + 538) = *(*(this + 16) + 22);
          }

          else
          {
            *(this + 534) = 2 * v7;
          }

          goto LABEL_15;
        }

        *(this + 500) += v7;
        v11 = *(this + 536);
        if (v7 < 0)
        {
          if (v11 >= 1)
          {
LABEL_22:
            *(this + 536) = 0;
          }
        }

        else if (v11 < 0)
        {
          goto LABEL_22;
        }
      }

LABEL_15:
      LOWORD(v2) = v5;
    }

    while (v1 >= v5);
  }

  return this;
}

uint64_t MTFEFrameFiller::OldNonSingingPitch(MTFEFrameFiller *this)
{
  v2 = *(this + 52);
  v3 = *(*(this + 30) + 60);
  v4 = *(this + 257) - (v2 >> 16) + v3;
  if (*(this + 258) < (*(this + 257) - WORD1(v2) + v3))
  {
    *(this + 52) = *(*(this + 2) + 32) + v2;
  }

  v5 = v4;
  v6 = *(this + 269) - 1;
  *(this + 269) = v6;
  if (v6 < 0)
  {
    *(this + 268) = 0;
  }

  v7 = *(this + 261);
  v8 = *(this + 259);
  if (*(this + 265) + v8 < v7)
  {
    v9 = *(this + 32);
    if (v9)
    {
      *(this + 261) = v7 - v8;
      *(this + 259) = *(v9 + 64);
      *(this + 265) = 0;
      v10 = *(v9 + 58);
      v11 = *(MEMORY[0x277D65568] + 4 * v10);
      v12 = *(v9 + 40);
      v13 = &MTFEPhonemeFlags::sSIL;
      if (v12)
      {
        v13 = v12;
      }

      v14 = *(MEMORY[0x277D65568] + 4 * v13[58]);
      *(this + 32) = v12;
      v15 = MTFEFrameFiller::sPhonPitchTbl[v10];
      *(this + 248) = v15 >> 1;
      if ((v14 & 4) == 0)
      {
        *(this + 265) = 5;
      }

      if ((v11 & 4) != 0)
      {
        *(this + 249) = v15 & 0xFFFE;
        *(this + 252) = 0;
      }

      else
      {
        *(this + 252) = 8 * (v15 >> 1);
        *(this + 249) = 0;
        if ((v11 & 0x1000) != 0)
        {
          *(this + 265) = 6;
        }

        else
        {
          *(this + 265) = 0;
        }
      }
    }
  }

  MTFEFrameFiller::PhonBoundaryPitch(this);
  v16 = *(this + 249);
  v17 = 8 * (v16 + (((*(this + 268) + *(this + 250) + *(this + 267) + v5) * *(this + 110)) >> 16));
  if (*(this + 513))
  {
    v18 = *(*(this + 2) + 190);
    *(this + 513) = 0;
    v19 = v18;
  }

  else
  {
    v19 = *(this + 53);
    v18 = *(this + 54);
  }

  v20 = *(*(this + 5) + 78);
  v21 = (0x10000 - v20) * v19 + v20 * v17;
  v22 = v18 * (0x10000 - v20) + (*(this + 252) + (v21 >> 16)) * v20;
  *(this + 53) = v21 >> 16;
  *(this + 54) = v22 >> 16;
  v23 = v22 >> 19;
  *(this + 253) = v23;
  *(this + 249) = (64190 * v16) >> 16;
  v24 = (*(this + 262) - *(this + 270));
  if (v24 < 0)
  {
    v24 = -v24;
  }

  if (v24 <= 9)
  {
    if (*(this + 512))
    {
      v25 = -10;
    }

    else
    {
      v25 = -80;
    }

    if (!*(this + 512))
    {
      LOWORD(v24) = 8 * v24;
    }

    LOWORD(v23) = v25 + v24 + v23;
    *(this + 253) = v23;
  }

  return (*(*(this + 2) + 190) + ((*(*(this + 2) + 200) * v23) >> 16));
}

uint64_t MTFEFrameFiller::PhonBoundaryPitch(uint64_t this)
{
  v1 = *(this + 524);
  v2 = *(this + 520);
  v3 = v1 - v2;
  if (v1 < v2)
  {
    v3 = *(this + 524);
    goto LABEL_23;
  }

  *(this + 524) = v3;
  v4 = *(this + 264);
  v2 = *(v4 + 64);
  *(this + 520) = v2;
  v5 = *(v4 + 58);
  v6 = *(MEMORY[0x277D65568] + 4 * *(v4 + 58));
  v7 = *(v4 + 72);
  v8 = *(v4 + 40);
  if (v8)
  {
    v9 = *(v4 + 40);
  }

  else
  {
    v9 = &MTFEPhonemeFlags::sSIL;
  }

  v10 = *(v9 + 58);
  v11 = *(MEMORY[0x277D65568] + 4 * *(v9 + 58));
  v12 = v9[18];
  *(this + 264) = v8;
  if (!*(this + 540))
  {
    v13 = -10000;
    goto LABEL_10;
  }

  if (*(this + 540) >= 1)
  {
    v13 = 0;
LABEL_10:
    *(this + 540) = v13;
  }

  *(this + 508) = -10000;
  *(this + 510) = 0;
  if ((v6 & 8) != 0)
  {
    v14 = v7 & 0xF;
    v15 = (v12 & 0x200) != 0 || v14 == 0;
    if (!v15 && v10 != 19)
    {
      if (v6)
      {
        v19 = v12 & 0x1400;
        if (v5 == v10 && v19 != 0)
        {
          goto LABEL_43;
        }

        if (v14 >= 2)
        {
          *(this + 508) = v2;
          *(this + 510) = 1;
        }
      }

      else if (v5 != 55)
      {
        v17 = v12 & 0x1400;
        if ((v6 & 0x1000) == 0 && v17 != 0)
        {
LABEL_43:
          *(this + 508) = v2;
        }
      }
    }
  }

  if ((v11 & 0x100000) != 0)
  {
    *(this + 508) = v2;
  }

  if ((v6 & 0x100000) != 0)
  {
    *(this + 508) = v2;
    return this;
  }

LABEL_23:
  if (v3 == 10 || v2 - 1 == v3)
  {
    *(this + 540) = *(this + 508);
    *(this + 512) = *(this + 510);
  }

  return this;
}

uint64_t MTFEFrameFiller::LogToLin(MTFEFrameFiller *this, int a2)
{
  if (a2 >= 0x3F)
  {
    v2 = 63;
  }

  else
  {
    v2 = a2;
  }

  v3 = v2 >> 1;
  if (a2 < 0)
  {
    v3 = 0;
  }

  return MTFEFrameFiller::sLogToLin[v3];
}

_WORD *MTFEFrameFiller::VisitCommand(_WORD *this, MTFECommand *a2)
{
  v3 = this;
  var8 = a2->var8;
  if (var8 <= 1920165235)
  {
    if (var8 > 1886220131)
    {
      if (var8 == 1886220132)
      {
        this = *(this + 2);
        if ((this[24] & 1) == 0 && *(v3 + 6))
        {
          return this;
        }

        var9 = a2->var9;
      }

      else
      {
        if (var8 != 1886220146)
        {
          return this;
        }

        v10 = *(this + 2);
        if ((v10[24] & 1) == 0)
        {
          if (*(this + 6))
          {
            return this;
          }
        }

        var9 = a2->var9 + MTBEParam::GetModulation(*(this + 2));
        this = v10;
      }

      return MTBEParam::SetModulation(this, var9);
    }

    else
    {
      if (var8 == 1885495666)
      {
        v8 = *(this + 2);
        if ((*(v8 + 48) & 1) == 0 && *(this + 6))
        {
          return this;
        }

        v9 = (12 * MTBEParam::GetPitch(*(this + 2)) + (SLODWORD(a2->var9) >> 8) + 8025);
      }

      else
      {
        if (var8 != 1885495667)
        {
          return this;
        }

        v8 = *(this + 2);
        if ((*(v8 + 48) & 1) == 0)
        {
          if (*(this + 6))
          {
            return this;
          }
        }

        v9 = a2->var9 >> 8;
      }

      v14 = MTBEParam::MidiToPitch(v8, v9);

      return MTBEParam::SetPitch(v8, v14);
    }
  }

  else
  {
    if (var8 > 1987013740)
    {
      switch(var8)
      {
        case 1987013741:
          v15 = *(this + 2);
          Volume = a2->var9;
          break;
        case 1987013746:
          v24 = *(this + 2);
          Volume = a2->var9 + MTBEParam::GetVolume(v24);
          v15 = v24;
          break;
        case 2003792484:
          v5 = a2->var9 >> 8;
          v6 = *(**(this + 11) + 56);
          v7 = a2->var9;

          return v6();
        default:
          return this;
      }

      goto LABEL_43;
    }

    if (var8 == 1920165236)
    {
      MTBEParam::ResetVoice(*(this + 2), *(this + 5));
      this = *(v3 + 3);
      if (!this)
      {
        return this;
      }

      if (a2->var9 == 1)
      {
        v17 = *(v3 + 2);
        Rate = MTBEParam::GetRate(this);
        MTBEParam::SetRate(v17, Rate);
        v19 = *(v3 + 2);
        Pitch = MTBEParam::GetPitch(*(v3 + 3));
        MTBEParam::SetPitch(v19, Pitch);
        v21 = *(v3 + 2);
        Modulation = MTBEParam::GetModulation(*(v3 + 3));
        MTBEParam::SetModulation(v21, Modulation);
        v23 = *(v3 + 2);
        Volume = MTBEParam::GetVolume(*(v3 + 3));
        v15 = v23;
LABEL_43:

        return MTBEParam::SetVolume(v15, Volume);
      }

      v25 = *(v3 + 5);

      return MTBEParam::ResetVoice(this, v25);
    }

    else if (var8 == 1937337955)
    {
      var9_low = LODWORD(a2->var9);
      v13 = *(**(this + 11) + 40);

      return v13();
    }
  }

  return this;
}

uint64_t MTFEFrameFiller::NextClonedWord(MTFEFrameFiller *this)
{
  v1 = *(this + 73);
  if (*(this + 73))
  {
    if (v1 >= *(this + 72))
    {
      return -1;
    }

    else
    {
      v2 = *(this + 14) + 8 * v1;
      v3 = *(this + 72) - v1;
      for (i = v1 + 1; ; ++i)
      {
        v1 = *(*v2 + 192);
        if (v1)
        {
          break;
        }

        *(this + 73) = i;
        v2 += 8;
        if (!--v3)
        {
          return -1;
        }
      }
    }
  }

  return v1;
}

uint64_t MTPFExpandCompounds::VisitPhoneme(uint64_t this, MTFEPhoneme *a2)
{
  v3 = this;
  var9 = a2->var9;
  if (*(this + 31) == 1)
  {
    if (a2->var9 <= 0x1Bu)
    {
      if (var9 == 19)
      {
        v7 = 31;
      }

      else
      {
        if (var9 != 21)
        {
          return this;
        }

        v7 = 13;
      }
    }

    else
    {
      switch(var9)
      {
        case 28:
          v7 = 11;
          break;
        case 29:
          v7 = 25;
          break;
        case 56:
          v5 = *(a2->var0 + 2);
          v6 = a2->var0 + 2;

          return v5(a2);
        default:
          return this;
      }
    }

LABEL_22:
    a2->var9 = v7;
    operator new();
  }

  MTFETrackingVisitor::PrePhoneme(this, a2);
  if (var9 == 53)
  {
    ++*(v3 + 24);
    v7 = 49;
    goto LABEL_22;
  }

  if (var9 == 52)
  {
    ++*(v3 + 24);
    v7 = 48;
    goto LABEL_22;
  }

  return MTFETrackingVisitor::PostPhoneme(v3, a2);
}

void MTPFExpandCompounds::~MTPFExpandCompounds(MTPFExpandCompounds *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTFESyllablify::VisitIntonationalPhrase(MTFESyllablify *this, MTFEIntonationalPhrase *a2)
{
  (*a2->var0)(a2, this + 8);
  v4 = *a2->var0;

  return v4(a2, this + 24);
}

void MTFESyllablify::Pass1::VisitWord(MTFESyllablify::Pass1 *this, MTFESpeechElement *a2)
{
  *(this + 8) = (a2[1].var0 & 0x20000) != 0;
  *(this + 9) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  operator new();
}

void MTFESyllablify::Pass1::VisitPhoneme(MTFESyllablify::Pass1 *this, MTFEPhoneme *a2)
{
  if (*(MEMORY[0x277D65568] + 4 * a2->var9))
  {
    v3 = MTFESyllablify::Pass1::MarkSyllable(this, a2);
  }

  else
  {
    v3 = MTFESyllablify::Pass1::PlaceStressInConsonant(this, a2);
  }

  MTFESyllablify::Pass1::MarkBoundary(v3, a2);
}

uint64_t MTFESyllablify::Pass1::MarkSyllable(uint64_t this, MTFEPhoneme *a2)
{
  var15 = a2->var15;
  *(this + 9) = var15 < 0;
  v3 = 768;
  v4 = a2;
  while (1)
  {
    v4 = v4->var7;
    if (!v4 || v4->var5 != a2->var5)
    {
      break;
    }

    if (*(MEMORY[0x277D65568] + 4 * v4->var9))
    {
      goto LABEL_7;
    }
  }

  v3 = 0;
LABEL_7:
  v5 = a2;
  while (1)
  {
    v5 = v5->var6;
    if (!v5 || v5->var5 != a2->var5)
    {
      break;
    }

    if (*(MEMORY[0x277D65568] + 4 * v5->var9))
    {
      v6 = 256;
      if (v3)
      {
        v6 = v3;
      }

      if (v3 == 768)
      {
        LODWORD(v3) = 512;
      }

      else
      {
        LODWORD(v3) = v6;
      }

      break;
    }
  }

  a2->var15 = var15 | v3;
  return this;
}

uint64_t MTFESyllablify::Pass1::PlaceStressInConsonant(uint64_t this, MTFEPhoneme *a2)
{
  v3 = this;
  v4 = 0;
  v5 = 1;
  v6 = MEMORY[0x277D65568];
  v7 = a2;
  while (1)
  {
    v7 = v7->var6;
    if (!v7)
    {
      return this;
    }

    var15 = v7->var15;
    if ((var15 & 0x100F0000) != 0)
    {
      return this;
    }

    if ((var15 & 0x1C00) != 0)
    {
      break;
    }

    var9 = v7->var9;
    if (*(v6 + 4 * var9))
    {
      return this;
    }

    if ((*(v3 + 9) & 1) == 0)
    {
      if (v5 == 2)
      {
        if (a2->var9 != 42)
        {
          return this;
        }

        this = MTFESyllablify::CheckConsonantPair(v4->var9, var9);
        v5 = 3;
        if ((this & 1) == 0)
        {
          return this;
        }
      }

      else
      {
        if (v5 != 1)
        {
          return this;
        }

        this = a2->var9;
        v5 = 2;
        v4 = v7;
        if (this != 42)
        {
          this = MTFESyllablify::CheckConsonantPair(this, var9);
          v5 = 2;
          v4 = v7;
          if ((this & 1) == 0)
          {
            return this;
          }
        }
      }
    }
  }

  if (v5 != 2 || (*(v3 + 9) & 1) != 0 || (this = MTFESyllablify::CheckConsonantPair(a2->var9, v4->var9), this))
  {
    if ((var15 & 0x400) != 0)
    {
      if (*(v3 + 8))
      {
        v10 = 2048;
      }

      else
      {
        v10 = 1024;
      }

      a2->var15 |= v10;
      var15 = v7->var15;
      if ((var15 & 0x800) == 0)
      {
LABEL_20:
        if ((var15 & 0x1000) == 0)
        {
          return this;
        }

        goto LABEL_21;
      }
    }

    else if ((var15 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    if (*(v3 + 8))
    {
      v11 = 0;
    }

    else
    {
      v11 = 2048;
    }

    a2->var15 |= v11;
    if ((v7->var15 & 0x1000) != 0)
    {
LABEL_21:
      a2->var15 |= 0x1000u;
    }
  }

  return this;
}

void MTFESyllablify::Pass1::MarkBoundary(MTFESyllablify::Pass1 *this, MTFEPhoneme *a2)
{
  v2 = MEMORY[0x277D65568];
  v3 = a2;
  do
  {
    v3 = v3->var6;
    if (!v3)
    {
      break;
    }

    v4 = v3->var15 & 0xF0000;
    if (!v4)
    {
      continue;
    }

    if (v4 >= 0x80000)
    {
      a2->var15 |= 9u;
      if ((v4 & 0x20000) != 0)
      {
LABEL_12:
        a2->var15 |= 3u;
        if ((v4 & 0x40000) != 0)
        {
LABEL_13:
          a2->var15 |= 5u;
          if ((v4 & 0x10000) == 0)
          {
            continue;
          }

LABEL_8:
          a2->var15 |= 1u;
          continue;
        }

        goto LABEL_7;
      }
    }

    else if ((v3->var15 & 0x20000) != 0)
    {
      goto LABEL_12;
    }

    if ((v4 & 0x40000) != 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    if ((v4 & 0x10000) != 0)
    {
      goto LABEL_8;
    }
  }

  while ((*(v2 + 4 * v3->var9) & 1) == 0);
}

unint64_t MTFESyllablify::CheckConsonantPair(MTFESyllablify *this, unsigned int a2)
{
  LOBYTE(v2) = 0;
  if (this <= 43)
  {
    if ((this - 38) >= 2)
    {
      if (this != 40)
      {
        if (this != 42)
        {
          return v2 & 1;
        }

        goto LABEL_19;
      }

LABEL_13:
      v3 = ((a2 - 30) & 0xFD) == 0;
      goto LABEL_14;
    }

LABEL_12:
    v3 = (a2 & 0xFE) == 32;
    goto LABEL_14;
  }

  if (this > 0x33)
  {
    goto LABEL_18;
  }

  if (((1 << this) & 0xC00000000000) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << this) & 0x3000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (((1 << this) & 0xC000000000000) == 0)
  {
LABEL_18:
    if (this != 44)
    {
      return v2 & 1;
    }

LABEL_19:
    if (a2 <= 0x32)
    {
      if (((1 << a2) & 0x1401A40000000) != 0)
      {
        LOBYTE(v2) = 1;
        return v2 & 1;
      }

      if (((1 << a2) & 0x4004000000000) != 0)
      {
        v3 = this == 42;
        goto LABEL_14;
      }

      if (a2 == 32)
      {
        v3 = this == 44;
LABEL_14:
        LOBYTE(v2) = v3;
        return v2 & 1;
      }
    }

    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v2 = 0x340000000uLL >> a2;
  if (a2 >= 0x22)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

MTFESpeechElement *MTFESyllablify::Pass2::VisitWord(MTFESyllablify::Pass2 *this, MTFESpeechElement *a2)
{
  *(this + 1) = 0;
  *(this + 25) = 0;
  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFESpeechElement *MTFESyllablify::Pass2::VisitSyllable(MTFESyllablify::Pass2 *this, MTFESpeechElement *a2)
{
  v2 = a2;
  *(this + 4) = 0;
  *(this + 5) = a2;
  do
  {
    result = MTFESpeechElement::VisitChildren(v2, this);
    v5 = *(this + 5) == v2;
    v2 = *(this + 5);
  }

  while (!v5);
  return result;
}

unint64_t MTFESyllablify::Pass2::VisitPhoneme(unint64_t this, MTFEPhoneme *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    if (v4 != a2)
    {
      return this;
    }

    *(this + 32) = 0;
  }

  v6 = (this + 8);
  v5 = *(this + 8);
  if (!v5)
  {
    *v6 = a2;
    v5 = a2;
  }

  var9 = a2->var9;
  if (!a2->var9)
  {
    *v6 = 0;
    return this;
  }

  if (*(MEMORY[0x277D65568] + 4 * var9))
  {
    if (*(this + 51) == 1 && (a2->var15 & 0x10000000) != 0)
    {
      *v6 = a2;
      v5 = a2;
    }

    if (v5->var5->var3 != v5)
    {
      *(this + 32) = a2;
      operator new();
    }

    v5->var15 |= 0x10000000u;
    *(this + 50) = 1;
    *v6 = 0;
    *(this + 16) = 0;
    *(this + 51) = (a2->var15 & 0x80000000) != 0;
  }

  else
  {
    if (*(this + 50) != 1)
    {
      return this;
    }

    if (*(this + 51) == 1)
    {
      if ((a2->var15 & 0x10000000) != 0)
      {
LABEL_11:
        *v6 = a2;
      }
    }

    else
    {
      v8 = *(this + 16);
      if (!v8)
      {
        *(this + 8) = a2;
        *(this + 16) = a2;
        *(this + 24) = 0;
        return this;
      }

      v9 = *(this + 24);
      if (v9)
      {
        v10 = *(this + 48);
        *(this + 48) = v10 + 1;
        if (v10)
        {
          if ((v10 + 1) == 2)
          {
            var6 = *(v9 + 40);
          }

          else
          {
            if ((v10 & 1) == 0)
            {
              return this;
            }

            var6 = v5->var6;
          }

          *v6 = var6;
          return this;
        }

        this = MTFESyllablify::CheckConsonantPair(*(v9 + 58), var9);
        if ((this & 1) == 0)
        {
          goto LABEL_11;
        }

        if (*(v8 + 58) == 42)
        {
          *v6 = v8;
        }

        else
        {
          *v6 = v9;
        }
      }

      else
      {
        *(this + 24) = a2;
        this = MTFESyllablify::CheckConsonantPair(*(v8 + 58), var9);
        if ((this & 1) == 0)
        {
          *v6 = a2;
        }

        *(v3 + 48) = 0;
      }
    }
  }

  return this;
}

void MTFESyllablify::Pass1::~Pass1(MTFESyllablify::Pass1 *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESyllablify::Pass2::~Pass2(MTFESyllablify::Pass2 *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEPitchRaiseFall::VisitIntonationalPhrase(MTFEPitchRaiseFall *this, MTFESpeechElement *a2)
{
  *(this + 4) = 0x200000002;
  *(this + 7) = 1;
  result = MTFESpeechElement::VisitChildren(a2, this);
  v5 = *(this + 15);
  v6 = (v5 - 2);
  *(this + 15) = v6;
  if (v5 >= 4 && *(this + 8) != 3)
  {
    v7 = v6 - 1;
    v8 = 1;
    v9 = (this + 64);
    while (1)
    {
      *v9 = 0x4000000;
      if (!v7)
      {
        break;
      }

      while (1)
      {
        v8 ^= 1u;
        ++v9;
        --v7;
        if (v8)
        {
          break;
        }

        *v9 = 0x8000000;
        if (!v7)
        {
          *(this + 8) = 0;
          goto LABEL_11;
        }
      }
    }

    *(this + 8) = 1;
    *(this + 15) = v5 - 1;
    *(this + v6 + 8) = 0x8000000;
LABEL_11:
    v10 = *a2->var0;

    return v10(a2, this + 8);
  }

  return result;
}

uint64_t MTFEPitchRaiseFall::VisitPhoneme(uint64_t this, MTFEPhoneme *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4 == 1)
  {
    var15 = a2->var15;
    if ((var15 & 0xF0000) == 0x10000)
    {
      v6 = 0x8000000;
      if ((var15 & 0x2000) != 0)
      {
        v6 = 0x4000000;
      }

      v7 = *(this + 60);
      *(this + 8 * v7 + 64) = v6;
      if (v7 <= 62)
      {
        *(this + 60) = v7 + 1;
      }

      *(this + 56) = 0;
      *(this + 48) = a2;
      if (*(this + 36) == 2)
      {
        *(this + 36) = 1;
        *(this + 40) = a2;
      }
    }
  }

  v8 = MEMORY[0x277D65568];
  if (*(MEMORY[0x277D65568] + 4 * a2->var9))
  {
    if (v4 == 1)
    {
      v12 = a2->var15;
      if ((v12 & 0x1400) != 0)
      {
        ++*(this + 56);
      }

      v13 = a2;
      while (v13 == a2 || (*(v8 + 4 * v13->var9) & 1) == 0)
      {
        if ((v13->var15 & 8) == 0)
        {
          v13 = v13->var6;
          if (v13)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      if ((v12 & 0x1400) != 0)
      {
        this = MTFEPitchRaiseFall::AnyVowelsTillBoundary(this, 8u, 1, a2);
        if ((this & 1) == 0)
        {
LABEL_26:
          v11 = 0;
          a2->var15 = v12 | 0x40;
          goto LABEL_27;
        }
      }
    }

    else if (v4 == 2)
    {
      v9 = a2;
      while (v9 == a2 || (*(MEMORY[0x277D65568] + 4 * v9->var9) & 1) == 0)
      {
        if ((v9->var15 & 8) == 0)
        {
          v9 = v9->var6;
          if (v9)
          {
            continue;
          }
        }

        v10 = a2->var15;
LABEL_18:
        a2->var15 = v10 | 0x40;
        v11 = 3;
        goto LABEL_27;
      }

      this = MTFEPitchRaiseFall::AnyVowelsTillBoundary(this, 8u, 1, a2);
      v10 = a2->var15;
      if ((this & 1) == 0)
      {
        goto LABEL_18;
      }

      if ((v10 & 0x1C00) != 0)
      {
        a2->var15 = v10 | 0x20;
        v11 = 1;
LABEL_27:
        *(v3 + 32) = v11;
      }
    }
  }

  return this;
}

uint64_t MTFEPitchRaiseFall::AnyVowelsTillBoundary(MTFEPitchRaiseFall *this, unsigned int a2, int a3, MTFEPhoneme *a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 20;
  v5 = a4;
  while (v5 == a4 || (*(MEMORY[0x277D65568] + 4 * v5->var9) & 1) == 0 || a3 && (v5->var15 & 0x1400) == 0)
  {
    if ((v5->var15 & 0xF) >= a2)
    {
      v4 = 0;
      v6 = 1;
      return v6 & v4;
    }

    v5 = v5->var6;
    if (!v5)
    {
      v6 = 0;
      return v6 & v4;
    }
  }

  v6 = 1;
  v4 = 1;
  return v6 & v4;
}

MTFESpeechElement *MTFEPitchRaiseFall::Pass2::VisitIntonationalPhrase(MTFEPitchRaiseFall::Pass2 *this, MTFESpeechElement *a2)
{
  *(this + 4) = 0;
  *(this + 3) = 0;
  return MTFESpeechElement::VisitChildren(a2, this);
}

uint64_t MTFEPitchRaiseFall::Pass2::VisitPhoneme(uint64_t this, MTFEPhoneme *a2)
{
  v2 = *(this + 16);
  if (*(v2 + 40) == a2)
  {
    *(this + 8) = 1;
  }

  if (*(v2 + 48) == a2)
  {
    *(this + 8) = 0;
  }

  else if (*(this + 8))
  {
    var15 = a2->var15;
    if ((var15 & 0xF0000) == 0x10000)
    {
      *(this + 9) = 1;
    }

    if ((*(MEMORY[0x277D65568] + 4 * a2->var9) & 1) != 0 && *(this + 9) == 1)
    {
      v4 = a2;
      while (1)
      {
        v4 = v4->var6;
        if (!v4)
        {
          break;
        }

        v5 = v4->var15;
        if ((v5 & 0xF0000) != 0)
        {
          break;
        }

        if (v5 & 0x1400) != 0 && (*(MEMORY[0x277D65568] + 4 * v4->var9))
        {
          return this;
        }
      }

      *(this + 9) = 0;
      v7 = *(this + 12);
      if (v7 < *(v2 + 60))
      {
        *(this + 12) = v7 + 1;
        a2->var15 = var15 | *(v2 + 8 * v7 + 64);
      }
    }
  }

  return this;
}

uint64_t MTFEPitchRaiseFall::Pass2::AnyStressVowelsRemain(MTFEPitchRaiseFall::Pass2 *this, MTFESpeechElement *a2)
{
  while (1)
  {
    a2 = a2->var6;
    if (!a2)
    {
      break;
    }

    if ((a2[1].var3 & 0xF0000) != 0)
    {
      LOBYTE(v2) = 0;
      return (a2 != 0) & v2;
    }

    v2 = a2[1].var3 & 0x1400;
    if (v2)
    {
      v3 = (*(MEMORY[0x277D65568] + 4 * BYTE2(a2[1].var0)) & 1) == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      LOBYTE(v2) = 1;
      return (a2 != 0) & v2;
    }
  }

  return (a2 != 0) & v2;
}

void MTFEPitchRaiseFall::Pass2::~Pass2(MTFEPitchRaiseFall::Pass2 *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEPitchBuffer::Expand(MTFEPitchBuffer *this)
{
  v1 = 2 * *this;
  *this = v1;
  is_mul_ok(v1, 6uLL);
  operator new[]();
}

uint64_t MTFEFillPitchBuffer::VisitSentence(MTFEFillPitchBuffer *this, MTFESpeechElement *a2)
{
  *(*(this + 1) + 16) = *(*(this + 1) + 8);
  *(this + 16) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  v3 = *(this + 3);
  v4 = *(this + 1);

  return MTBEParam::StartNewPitchClause(v3);
}

MTFESpeechElement *MTFEFillPitchBuffer::VisitIntonationalPhrase(MTFEFillPitchBuffer *this, MTFESpeechElement *a2)
{
  *(this + 39) = BYTE6(a2[2].var6);
  *(this + 34) = 0;
  *(this + 38) = 1;
  *(this + 10) = 0;
  v2 = 1374389535 * (*(*(this + 2) + 4) << 16);
  *(this + 6) = ((v2 >> 37) + (v2 >> 63));
  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFEPitchBuffer *MTFEFillPitchBuffer::AddPitch(MTFEFillPitchBuffer *this, __int16 a2, int a3, __int16 a4)
{
  v5 = *(this + 16);
  v6 = v5 + a3;
  result = *(this + 1);
  if (v5 + a3 < 0)
  {
    v8 = *(result + 2);
    *v8 = 0;
  }

  else
  {
    v8 = *(result + 2);
    *v8 = v6;
    *(this + 16) = -a3;
  }

  v8[1] = a2;
  v8[2] = a4;
  *(result + 2) = v8 + 3;
  if ((v8 + 3) >= *(result + 3))
  {
    MTFEPitchBuffer::Expand(result);
  }

  return result;
}

float MTFEFillPitchBuffer::VisitPhoneme(MTFEFillPitchBuffer *this, MTFEPhoneme *a2)
{
  var7 = a2->var7;
  if (var7)
  {
    v5 = a2->var7;
  }

  else
  {
    v5 = &MTFEPhonemeFlags::sSIL;
  }

  if (*(MEMORY[0x277D65568] + 4 * a2->var9))
  {
    var15 = a2->var15;
    if ((var15 & 0x20) != 0 && *(this + 38) == 1)
    {
      LOWORD(v7) = *(*(this + 2) + 64);
      *(this + 17) = v7;
      if (*(this + 39) == 71)
      {
        v7 = v7 >> 1;
        *(this + 17) = v7;
      }

      if ((var15 & 0x40) != 0)
      {
        v8 = -16;
      }

      else
      {
        v8 = 0;
      }

      MTFEFillPitchBuffer::AddPitch(this, v7, v8, 2);
      *(this + 18) += *(this + 17);
      *(this + 38) = 0;
    }

    if ((var15 & 0x4000000) != 0)
    {
      v9 = *(*(this + 2) + 68) >> (*(this + 39) == 71);
    }

    else
    {
      if ((var15 & 0x8000000) == 0)
      {
        goto LABEL_18;
      }

      LOWORD(v9) = *(*(this + 2) + 70);
    }

    MTFEFillPitchBuffer::AddPitch(this, v9, 0, 32);
LABEL_18:
    if ((var15 & 0x1400) != 0)
    {
      if ((var15 & 0x1000) != 0)
      {
        v10 = 77;
      }

      else
      {
        v10 = 41;
      }

      v11 = *(this + 10);
      *(this + 10) = v11 + 1;
      v12 = v10 | 0x12;
      v13 = v10 + 12;
      if (v11 != 3)
      {
        v13 = v10;
      }

      if (v11 != 2)
      {
        v12 = v13;
      }

      v14 = v10 + 29;
      if (v11 == 1)
      {
        v10 += 27;
      }

      if (!v11)
      {
        v10 = v14;
      }

      if (v11 > 1)
      {
        v10 = v12;
      }

      v15 = v10 >> (*(this + 39) == 71);
      if ((var15 & 0x48) != 0)
      {
        LOWORD(v16) = -12;
      }

      else
      {
        LOWORD(v16) = 0;
      }

      if ((var15 & 0x1048) == 0)
      {
        v16 = (a2->var13 * 0.25);
      }

      v17 = (*(this + 12) * v15) >> 16;
      if ((var15 & 0x1008) == 8)
      {
        LOWORD(v17) = -12;
      }

      MTFEFillPitchBuffer::AddPitch(this, v17, v16, 1);
    }

    if ((var15 & 0x40) == 0)
    {
      if ((var15 & 8) == 0)
      {
        goto LABEL_57;
      }

LABEL_52:
      v22 = *(this + 39);
      if ((v22 - 68) < 2)
      {
        v23 = 29;
        v24 = 21;
LABEL_56:
        MTFEFillPitchBuffer::AddPitch(this, v24, 0, 4);
        MTFEFillPitchBuffer::AddPitch(this, v23, a2->var13, 4);
        goto LABEL_57;
      }

      if (v22 == 71)
      {
        v23 = 70;
        v24 = 51;
        goto LABEL_56;
      }

LABEL_57:
      var7 = a2->var7;
      goto LABEL_58;
    }

    v18 = (a2->var13 - 32);
    if (v18 <= 5)
    {
      LOWORD(v18) = 5;
    }

    v19 = var15 & 8;
    if ((var15 & 8) != 0)
    {
      if (*(this + 39) - 68 < 5)
      {
        v20 = dword_257B89700[(*(this + 39) - 68)];
        goto LABEL_51;
      }
    }

    else if ((var15 & 4) == 0)
    {
      v20 = *(*(this + 2) + 66);
      goto LABEL_51;
    }

    v20 = 0;
LABEL_51:
    v21 = ((*(*(this + 2) + 72) * v20) >> 16) - *(this + 17);
    MTFEFillPitchBuffer::AddPitch(this, v21, v18, 2);
    *(this + 18) += v21;
    *(this + 38) = 1;
    if (!v19)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_58:
  if (var7 && (WORD1(v5[1].var3) & 0x1F0) != 0)
  {
    MTFEFillPitchBuffer::AddPitch(this, -*(this + 18), 0, 16);
    *(this + 18) = 0;
  }

  result = a2->var13;
  *(this + 16) += result;
  return result;
}

void MTFEFillPitchBuffer::~MTFEFillPitchBuffer(MTFEFillPitchBuffer *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t _GLOBAL__sub_I_MTFEPhoneme_cp()
{
  MTFEPhoneme::MTFEPhoneme(&MTFEPhonemeFlags::sSIL, 0);

  return __cxa_atexit(MTFEPhoneme::~MTFEPhoneme, &MTFEPhonemeFlags::sSIL, &dword_257B07000);
}

void MTFEModDuration::MTFEModDuration(uint64_t a1, MTFEModDuration *this, uint64_t a3)
{
  *a1 = &unk_2868F5BB8;
  *(a1 + 8) = this;
  *(a1 + 16) = a3;
  *(a1 + 70) = *(this + 1303);
  UsePostDurMod = MTBEParam::GetUsePostDurMod(this);
  v5 = *(a1 + 8);
  if (UsePostDurMod)
  {
    DurModFakeRate = MTBEParam::GetDurModFakeRate(v5);
  }

  else
  {
    DurModFakeRate = MTBEParam::GetRate(v5);
  }

  *(a1 + 100) = DurModFakeRate;
  *(a1 + 96) = 0;
}

float MTFEModDuration::VisitSentence(MTFEModDuration *this, MTFESpeechElement *a2)
{
  *(this + 34) = 0;
  var0 = a2[1].var0;
  *(this + 73) = (var0 & 2) != 0;
  *(this + 74) = (var0 & 4) != 0;
  *(this + 22) = 0;
  *(this + 24) = HIDWORD(a2[1].var3);
  *(this + 76) = (var0 & 8) != 0;
  MTFESpeechElement::VisitChildren(a2, this);
  HIDWORD(a2[1].var0) = *(this + 22);
  v5 = *(this + 1);
  v6 = *&a2[1].var2;
  if (v5[6].i8[0] == 1)
  {

    MTBEParam::SetTempo(v5, v6);
  }

  else
  {

    return MTBEParam::SetRate(v5, v6);
  }

  return result;
}

MTFESpeechElement *MTFEModDuration::VisitIntonationalPhrase(MTFEModDuration *this, MTFESpeechElement *a2)
{
  *(this + 71) = 256;
  v4 = *(this + 1);
  v5 = *(v4 + 240);
  *(this + 5) = v5;
  if (v5)
  {
    v6 = *v5;
    *(this + 5) = v5 + 1;
    v5 = bswap32(v6);
  }

  *(this + 6) = v5;
  *(this + 32) = 0;
  *(v4 + 212) = 0;
  *(this + 10) = *(&a2[2].var2 + 1);
  if (*(v4 + 50) & 1) != 0 || (*(v4 + 48) & 1) != 0 || (*(v4 + 49))
  {
    var6 = 0;
  }

  else
  {
    var6 = a2[3].var6;
  }

  *(this + 7) = var6;
  *(this + 31) = 0;
  v8 = a2->var6;
  if (v8)
  {
    LOBYTE(v8) = WORD1(v8[2].var7) == 1;
  }

  *(this + 77) = v8;
  *(this + 4) = MTFELastPhoneme(a2);
  MTFESpeechElement::VisitChildren(a2, this);
  result = MTFESpeechElement::VisitChildren((a2 + 64), this);
  *(*(this + 1) + 212) = 0;
  return result;
}

void MTFEModDuration::VisitWord(MTFEModDuration *this, MTFESpeechElement *a2)
{
  if (kMTFEDebugSingingDuration)
  {
    MTBEDebugParams::GetParam(kMTFEDebugSingingDuration, &byte_27F8F0958, byte_27F8F0958);
    kMTFEDebugSingingDuration = 0;
  }

  v4 = MEMORY[0x277D85DF8];
  if (byte_27F8F0958 == 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "Word %s tempo %d\n", &a2[3].var5, *(&a2[3].var2 + 1));
  }

  MTFESpeechElement::VisitChildren(a2 + 2, this);
  var0 = a2[1].var0;
  *(this + 75) = var0 & 1;
  *(this + 29) = 0;
  v6 = *&a2[3].var2;
  if (*&a2[3].var2)
  {
    v7 = *(this + 1);
    if (v7[6].i8[0] == 1)
    {
      MTBEParam::SetTempo(v7, v6);
    }

    else
    {
      MTBEParam::SetRate(v7, v6);
    }

    *(this + 25) = *&a2[3].var2;
    LOBYTE(var0) = *(this + 75);
  }

  v8 = 1.0;
  if (var0)
  {
    v9 = *(this + 24);
    if (v9 > 1.0)
    {
      v8 = v9 / *(this + 25);
    }
  }

  *(this + 23) = v8;
  if (*(this + 7))
  {
    *(this + 108) = 0x42C8000000000000;
    *(this + 26) = *(&a2[3].var2 + 1);
    *&a2[3].var2 = MTBEParam::GetDurModFakeRate(*(this + 1));
  }

  MTFESpeechElement::VisitChildren(a2, this);
  a2[3].var1 = *(this + 29);
  if (kMTFEDebugSingingDuration)
  {
    MTBEDebugParams::GetParam(kMTFEDebugSingingDuration, &byte_27F8F0958, byte_27F8F0958);
    kMTFEDebugSingingDuration = 0;
  }

  if (byte_27F8F0958 == 1)
  {
    fprintf(*v4, "  Duration %d ms, stretch %f, min dur %f\n", 5 * *(this + 29), *(this + 27), *(this + 28));
  }
}

MTFESpeechElement *MTFERateRescale::VisitWord(MTFERateRescale *this, MTFESpeechElement *a2)
{
  *(this + 6) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  a2[3].var1 = *(this + 6);
  return result;
}

float MTFERateRescale::VisitPhoneme(MTFERateRescale *this, MTFEPhoneme *a2)
{
  v2 = floorf((a2->var13 * *(this + 2)) + 0.5);
  a2->var13 = v2;
  result = v2 + *(this + 6);
  *(this + 6) = result;
  return result;
}

float MTFEModDuration::VisitSyllable(MTFEModDuration *this, MTFESpeechElement *a2)
{
  *(this + 30) = 0;
  if (*(this + 7))
  {
    *(this + 3) = 0;
  }

  MTFESpeechElement::VisitChildren(a2, this);
  v5 = *(this + 7);
  if (v5)
  {
    if (*(this + 3))
    {
      var0_low = SLOWORD(a2[1].var0);
      if (*(v5 + 16) > var0_low)
      {
        v7 = *(this + 31) + MTFEMelody::SilenceSamples(v5, var0_low, *(this + 26));
        *(this + 31) = v7;
        HIDWORD(a2->var3[1].var3) = v7;
        *(this + 31) += MTFEMelody::DurationSamples(*(this + 7), SLOWORD(a2[1].var0), *(this + 26));
        v8 = MTFEMelody::DurationFrames(*(this + 7), SLOWORD(a2[1].var0), *(this + 26));
        if (kMTFEDebugSingingDuration)
        {
          MTBEDebugParams::GetParam(kMTFEDebugSingingDuration, &byte_27F8F0958, byte_27F8F0958);
          kMTFEDebugSingingDuration = 0;
        }

        if (byte_27F8F0958 == 1)
        {
          v9 = *MEMORY[0x277D85DF8];
          v10 = MTFEMelody::Duration(*(this + 7), SLOWORD(a2[1].var0));
          fprintf(v9, "    Note %4.2f beats, %d ms. Natural duration %d ms\n", v10, 5 * v8, 5 * *(this + 30));
        }

        v11 = *(this + 30);
        v12 = *(this + 3);
        v13 = __OFSUB__(v8, v11);
        v14 = v8 - v11;
        if ((v14 < 0) ^ v13 | (v14 == 0))
        {
          v15 = *(v12 + 64);
        }

        else
        {
          v15 = *(v12 + 64);
          v16 = v14 / v15;
          if (*(this + 27) >= v16)
          {
            v16 = *(this + 27);
          }

          *(this + 27) = v16;
        }

        v17 = v14;
        v18 = v15 + v14;
        *(v12 + 64) = v18;
        if (v18 >= 4.0)
        {
          if (v18 > 100.0)
          {
            *(v12 + 72) |= 0x10u;
          }
        }

        else
        {
          v14 = ((v18 + -4.0) + v17);
          *(v12 + 64) = 1082130432;
          v17 = v14;
        }

        *(this + 29) += v14;
        result = *(this + 22) + v17;
        *(this + 22) = result;
      }
    }
  }

  return result;
}

float MTFEModDuration::VisitCommand(MTFEModDuration *this, MTFECommand *a2)
{
  if (a2->var8 == 1651668069)
  {
    result = a2->var9 / 100.0;
    *(this + 24) = result;
  }

  return result;
}

void MTFEModDuration::VisitPhoneme(MTFEModDuration *this, MTFEPhoneme *a2)
{
  if (!a2->var7)
  {
    a2->var13 = 1.0;
    return;
  }

  p_var15 = &a2->var15;
  var15 = a2->var15;
  v6 = *(MEMORY[0x277D65568] + 4 * a2->var9);
  if (*(this + 75) == 1)
  {
    v7 = *(this + 23);
LABEL_8:
    var13 = v7 * a2->var13;
    goto LABEL_10;
  }

  if (a2->var9 && (*(this + 70) & 1) != 0)
  {
    v7 = *(*(this + 1) + 44);
    goto LABEL_8;
  }

  MTFEModDuration::OldDurationModel(this, a2);
  var13 = a2->var13;
LABEL_10:
  v9 = floor(var13 + 0.5);
  if (var13 >= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  a2->var13 = v10;
  v11 = *(this + 1);
  if (*(v11 + 50) != 1)
  {
    if (*(v11 + 49) == 1)
    {
      if (!(*&var15 & 0x80000 | v6 & 1))
      {
        goto LABEL_52;
      }

      if ((var15 & 0x80000) != 0)
      {
        v31 = *(v11 + 258);
        if (*(this + 33) < v31)
        {
          *(this + 33) = v31;
        }
      }

      else
      {
        v12 = *(this + 2);
        v13 = *(v11 + 212);
        *(this + 34) = *(v12 + 2 * v13 + 351) & 0xF;
        if (*(v12 + 348) > (v13 + 1))
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = 0;
        }

        *(v11 + 212) = v14;
      }
    }

    else
    {
      if (*(v11 + 48) != 1)
      {
        goto LABEL_52;
      }

      v15 = (a2->var12 & 0xF00) == 0;
      *(this + 34) = HIBYTE(a2->var12) & 0xF;
      if (v15 && (var15 & 0x80000) == 0)
      {
        goto LABEL_52;
      }
    }

    MTFEModDuration::SingNote(this, a2);
    goto LABEL_52;
  }

  if ((var15 & 0x10000000) != 0 && *(this + 72) == 1)
  {
    *p_var15 |= 0x2000000u;
  }

  if (!(*&var15 & 0x80000 | v6 & 1))
  {
    goto LABEL_52;
  }

  if ((*(this + 72) & 1) == 0)
  {
    var6 = a2->var6;
    v17 = &MTFEPhonemeFlags::sSIL;
    if (var6)
    {
      v17 = a2->var6;
    }

    if ((var15 & 0x80000) != 0)
    {
      goto LABEL_39;
    }

    if ((v6 & 0x10) == 0)
    {
      if (!var6)
      {
LABEL_39:
        v18 = *(this + 5);
        v19 = *(this + 6);
        v20 = *v18;
        v21 = *(v11 + 240);
        v22 = v18 - v21;
        v24 = v18[1];
        v23 = v18 + 1;
        v25 = (bswap32(v24) - bswap32(v20)) / 0x38 - *(this + 32);
        if (BYTE2(v17[1].var0))
        {
          v26 = -10;
        }

        else
        {
          v26 = -20;
        }

        v27 = (v26 + v25);
        v28 = *(this + 3);
        v29 = *(v28 + 64) + v27;
        if (v29 < 4.0)
        {
          v29 = 4.0;
        }

        *(v28 + 64) = v29;
        *(this + 32) = 0;
        v30 = (v21 + 4);
        if (!v19)
        {
          v30 = 0;
        }

        if (v19 - (v22 >> 2) >= 2)
        {
          v30 = v23;
        }

        *(this + 5) = v30;
        goto LABEL_52;
      }

      p_var15 = &var6[1].var3;
    }

    *p_var15 |= 0x2000000u;
    goto LABEL_39;
  }

  *(this + 72) = 0;
LABEL_52:
  if (v6)
  {
    *(this + 3) = a2;
  }

  *(this + 32) += v10;
  v32 = a2->var13;
  *(this + 22) = v32 + *(this + 22);
  *(this + 116) = vadd_s32(*(this + 116), vdup_n_s32(v32));
  v33 = a2->var13;
  if (v33 >= *(this + 28))
  {
    v33 = *(this + 28);
  }

  *(this + 28) = v33;
}

float MTFEModDuration::OldDurationModel(MTFEModDuration *this, MTFEPhoneme *a2)
{
  var9 = a2->var9;
  var15 = a2->var15;
  if (a2->var6)
  {
    var6 = a2->var6;
  }

  else
  {
    var6 = &MTFEPhonemeFlags::sSIL;
  }

  if (var6->var6)
  {
    v5 = var6->var6;
  }

  else
  {
    v5 = &MTFEPhonemeFlags::sSIL;
  }

  if (a2->var7)
  {
    var7 = a2->var7;
  }

  else
  {
    var7 = &MTFEPhonemeFlags::sSIL;
  }

  if (a2->var9)
  {
    v7 = MEMORY[0x277D65568];
    v8 = *(MEMORY[0x277D65568] + 4 * a2->var9);
    v9 = BYTE2(var6[1].var0);
    v10 = *(MEMORY[0x277D65568] + 4 * v9);
    v11 = BYTE2(var7[1].var0);
    v12 = *(MEMORY[0x277D65568] + 4 * v11);
    v13 = MTFEPhonemeDuration::sMaxDur[a2->var9];
    v14 = MTFEPhonemeDuration::sMinDur[a2->var9];
    if ((var15 & 8) != 0)
    {
      if ((v8 & 0x1000) != 0)
      {
        v15 = 0;
      }

      else if ((~v8 & 0x8000004) != 0)
      {
        if ((((v10 & 0x404) == 1024) & (v8 >> 26)) != 0)
        {
          v15 = 15;
        }

        else
        {
          v15 = 40;
        }
      }

      else
      {
        v15 = 20;
      }

      if ((v10 & 0x10) != 0)
      {
        v15 -= 20;
      }

      v27 = *(this + 10);
      v16 = v8 & 1;
      if (v27 <= 9 && (var15 & 0x1C00) != 0 && (v8 & 1) != 0)
      {
        v15 += 5 * (10 - v27);
        goto LABEL_45;
      }
    }

    else
    {
      v15 = 0;
      v16 = v8 & 1;
    }

    if (!v16)
    {
      v17 = (v8 & 0x8000000) == 0;
      if ((var15 & 1) == 0)
      {
        v17 = 1;
      }

      v18 = v15 + 20;
      if (v17)
      {
        v18 = v15;
        v19 = 108;
      }

      else
      {
        v19 = 128;
      }

      v20 = 0;
      LODWORD(v21) = (a2->var15 & 0x80) != 0;
      if ((var15 & 0x80) != 0)
      {
        LODWORD(v22) = 128;
      }

      else
      {
        v15 = v18;
        LODWORD(v22) = v19;
      }

      goto LABEL_60;
    }

LABEL_45:
    if ((var15 & 0xC) != 0)
    {
      LODWORD(v22) = 128;
    }

    else
    {
      LODWORD(v22) = 76;
    }

    if ((var15 & 0x1700) != 0)
    {
      if ((var15 & 0x300) != 0 && (var15 & 0xF) == 0 && (var15 & 0x1400) == 0)
      {
        if ((var15 & 0x300) >= 0x101)
        {
          LODWORD(v22) = 60;
        }

        else
        {
          LODWORD(v22) = 64;
        }
      }
    }

    else
    {
      v28 = (36025 * v22) >> 16;
      LODWORD(v22) = (55675 * v22) >> 16;
      if ((var15 & 0x800) == 0)
      {
        LODWORD(v22) = v28;
      }
    }

    if ((var15 & 0x300) != 0)
    {
      LODWORD(v22) = (52400 * v22) >> 16;
    }

    v21 = (var15 >> 7) & 1;
    v20 = 1;
LABEL_60:
    if ((var15 & 0x1400) == 0)
    {
      v29 = v14 >> 2;
      if ((v8 & 0x100400) != 0)
      {
        v29 = 0;
      }

      v14 -= v29;
      if (v20)
      {
        v30 = (45850 * v22) >> 16;
        LODWORD(v22) = (36025 * v22) >> 16;
        if ((var15 & 0x300) != 0x200)
        {
          LODWORD(v22) = v30;
        }
      }

      else
      {
        v31 = (45850 * v22) >> 16;
        LODWORD(v22) = (39300 * v22) >> 16;
        if ((var9 - 30) > 3)
        {
          LODWORD(v22) = v31;
        }
      }
    }

    v32 = var15 & 0x1C00;
    if (v32 == 4096)
    {
      *(this + 71) = 1;
      if (v20)
      {
        v15 = 60;
      }

      else
      {
        v15 = 20;
      }

      if (v20)
      {
        goto LABEL_83;
      }
    }

    else if ((v20 | v21))
    {
      *(this + 71) = 0;
      if (v20)
      {
        goto LABEL_83;
      }
    }

    else if (*(this + 71))
    {
      v15 = 20;
    }

    if ((v8 & 0x4000040) == 0 || (var15 & 0x1C80) != 0 || (v10 & 0x400) == 0)
    {
      goto LABEL_99;
    }

LABEL_83:
    if ((v10 & 1) != 0 || (var6[1].var3 & 0x1C80) != 0)
    {
      LOBYTE(v33) = 0;
LABEL_86:
      v34 = 0x10000;
      goto LABEL_87;
    }

    if ((v10 & 0x4000040) != 0 && (v5[1].var3 & 0x1C80) == 0)
    {
      v36 = BYTE2(v5[1].var0);
      v33 = (*(v7 + 4 * v36) & 0x400u) >> 10;
      if ((*(v7 + 4 * v36) & 0x400) == 0)
      {
        LODWORD(v36) = v9;
      }

      if (!v36)
      {
        goto LABEL_86;
      }
    }

    else
    {
      LOBYTE(v33) = 0;
      LODWORD(v36) = v9;
      if (!v9)
      {
        goto LABEL_86;
      }
    }

    v51 = *(v7 + 4 * v36);
    if ((v51 & 4) != 0)
    {
      if ((v51 & 0x40) != 0)
      {
        v52 = 55675;
      }

      else
      {
        v52 = 0x10000;
      }

      v53 = v15 + 25;
      if ((var15 & 0x1400) == 0)
      {
        v53 = v15;
      }

      if ((v51 & 0x1000) != 0)
      {
        v54 = v15;
      }

      else
      {
        v54 = v53;
      }

      if (v36 == 55)
      {
        v55 = v15;
      }

      else
      {
        v55 = v54;
      }

      if ((v51 & 0x400) != 0)
      {
        LOWORD(v15) = v55;
        v34 = 78600;
      }

      else
      {
        v34 = v52;
      }
    }

    else
    {
      v15 -= v15 >> 2;
      v34 = 52400;
    }

LABEL_87:
    if (((var15 & 8) == 0) | v33 & 1)
    {
      v34 = (v34 >> 1) + 0x8000;
    }

    LODWORD(v22) = (v34 * v22) >> 16;
    if (v20)
    {
      if (v10)
      {
        LOWORD(v15) = v15 + 30;
      }

      if ((var15 & 0x300) == 0x100 && (var15 & 0x1400) != 0 && (var7[1].var3 & 0x80) == 0)
      {
        LOWORD(v15) = v15 + 25;
      }

      if (v9 == 27)
      {
        LOWORD(v15) = v15 - 20;
      }

LABEL_126:
      v40 = *(this + 1);
      v41 = *(v40 + 44) * (v14 + (((v13 - v14) * v22) >> 7));
      if ((((v12 & 0x1004) == 4096) & (v8 >> 4)) != 0)
      {
        LOWORD(v15) = v15 + 20;
      }

      v42 = (v8 >> 3) & 1;
      v43 = v12 & 0x140;
      if (v15)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43 == 256;
      }

      v45 = v44;
      if ((v45 & v42) != 0)
      {
        v46 = 20;
      }

      else
      {
        v46 = v15;
      }

      v47 = *(this + 10);
      v48 = v14 != v13 && v47 <= 9;
      v49 = 5 * (5 - (v47 >> 1));
      if (!v48)
      {
        v49 = 0;
      }

      v23 = (*(v40 + 40) * (v49 + v46)) + v41;
      goto LABEL_147;
    }

LABEL_99:
    if ((v8 & 2) != 0)
    {
      if ((var15 & 8) == 0 && (v10 & 2) != 0)
      {
        if ((v8 & 0x40) != 0)
        {
          v35 = 98250;
          if ((var6[1].var3 & 0x80) == 0)
          {
            v35 = 36025;
          }
        }

        else
        {
          v35 = 36025;
        }

        if ((var9 & 0xFFFFFFFD) == 0x28)
        {
          if ((v10 & 0x1000) != 0)
          {
            v35 = 32750;
          }

          if (v9 == 44)
          {
            LOWORD(v23) = 12;
            goto LABEL_147;
          }
        }

        v14 -= v14 >> 2;
        v22 = (v35 * v22) >> 16;
      }

      if (v32 == 0 && (v12 & 0x40) != 0)
      {
        v37 = 6550;
      }

      else
      {
        v37 = 36025;
      }

      if (v11 == 42)
      {
        v38 = 39300;
      }

      else
      {
        v38 = v37;
      }

      if ((v8 & 0x1000) == 0)
      {
        v38 = 36025;
      }

      v39 = (v38 * v22) >> 16;
      if ((v12 & 2) != 0)
      {
        LOWORD(v14) = v14 - (v14 >> 2);
        LODWORD(v22) = v39;
      }
    }

    goto LABEL_126;
  }

  LOWORD(v23) = 1;
  if ((*(this + 76) & 1) == 0 && (var15 & 0x8000) == 0)
  {
    v24 = MTFEPhonemeFlags::sBoundaryDur[(var15 >> 20) & 0x1F];
    if (*(this + 4) == a2 && *(this + 77) == 1)
    {
      v24 = ((v24 + (v24 >> 15)) << 16) >> 17;
    }

    if (*(this + 73) == 1)
    {
      v25 = a2;
      while (1)
      {
        var5 = v25->var5;
        if (!var5)
        {
          break;
        }

        v44 = v25 == var5->var4;
        v25 = v25->var5;
        if (!v44)
        {
          goto LABEL_145;
        }
      }

      LOWORD(v24) = v24 + 500;
      if (*(this + 74))
      {
        LOWORD(v24) = 0;
      }
    }

LABEL_145:
    v23 = (*(*(this + 1) + 40) * v24);
    if (v23 <= 10)
    {
      LOWORD(v23) = 10;
    }
  }

LABEL_147:
  result = a2->var13 * (v23 / 5.0);
  a2->var13 = result;
  return result;
}

uint64_t MTFEModDuration::SingNote(uint64_t this, MTFEPhoneme *a2)
{
  if (*(this + 72))
  {
    *(this + 72) = 0;
  }

  else
  {
    v2 = *(this + 24);
    v3 = *(v2 + 64) + (*(this + 66) - *(this + 64));
    *(v2 + 64) = v3;
    if (v3 >= 4.0)
    {
      if (v3 > 100.0)
      {
        *(v2 + 72) |= 0x10u;
      }
    }

    else
    {
      *(v2 + 64) = 1082130432;
    }
  }

  *(this + 24) = a2;
  *(this + 66) = *(*(this + 8) + 2 * *(this + 68) + 248);
  *(this + 64) = 0;
  return this;
}

void MTFEModDuration::~MTFEModDuration(MTFEModDuration *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFERateRescale::~MTFERateRescale(MTFERateRescale *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTFEMarkStress::MTFEMarkStress(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = &unk_2868F5D08;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 96) = 0;
  *(result + 153) = 0;
  return result;
}

{
  *result = &unk_2868F5D08;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 96) = 0;
  *(result + 153) = 0;
  return result;
}

void MTFEMarkStress::VisitSentence(MTFEMarkStress *this, MTFESpeechElement *a2)
{
  v4 = *(this + 2);
  if (*(v4 + 48) == 1)
  {
    Rate = *(*(this + 1) + 90);
  }

  else
  {
    Rate = MTBEParam::GetRate(v4);
  }

  *(this + 80) = Rate;
  *(this + 15) = 0;
  *(this + 128) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  *&a2[1].var2 = *(this + 80);

  MTFEMarkStress::CheckPitchChange(this, 0);
}

void MTFEMarkStress::CheckPitchChange(MTFEMarkStress *this, MTFEWord *a2)
{
  if (*(this + 128) == 1)
  {
    if (*(this + 15))
    {
      if (kMTFEPitchDWIM)
      {
        MTBEDebugParams::GetParam(kMTFEPitchDWIM, &byte_27F8F0978, byte_27F8F0978);
        kMTFEPitchDWIM = 0;
      }

      if (byte_27F8F0978 == 1)
      {
        *(*(this + 15) + 56) |= 0x800u;
      }
    }

    *(this + 15) = a2;
    *(this + 128) = 0;
  }

  else if (a2 && (a2->var8 & 0x40) == 0)
  {
    *(this + 15) = 0;
  }
}

void MTFEMarkStress::VisitIntonationalPhrase(MTFEMarkStress *this, MTFEIntonationalPhrase *a2)
{
  a2->var19 = 0;
  *(this + 5) = 0;
  *(this + 17) = a2;
  *(this + 10) = 0;
  *(this + 41) = 0;
  *(this + 14) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 183) = 0;
  *(this + 191) = a2->var28 != 0;
  operator new();
}

void MTFEMarkStress::AdjustParameters(MTFEMarkStress *this, MTFESpeechElement *a2)
{
  v4 = this + 168;
  LODWORD(a2[1].var3) = a2[1].var3 & ~*(this + 44) | *(this + 42);
  v5 = *(this + 1);
  if (*(this + 184))
  {
    v6 = pow(vcvtd_n_f64_s32(*(v5 + 82), 8uLL), *(this + 184)) * *&a2[1].var1;
    *&a2[1].var1 = v6;
  }

  WORD2(a2[1].var0) += *(v5 + 80) * *(this + 185);
  HIWORD(a2[1].var0) = *(this + 93);
  if (*(this + 188) == 1)
  {
    *(this + 6) = a2;
    if ((*(this + 155) & 1) == 0)
    {
      *(this + 5) = a2;
    }

    if (!*(this + 8))
    {
      *(this + 8) = a2;
    }

    *(this + 188) = 0;
  }

  if (*(this + 189) == 1)
  {
    *(this + 7) = a2;
    if (!*(this + 9))
    {
      *(this + 9) = a2;
    }

    *(this + 189) = 0;
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 4) = 0;
  if (!a2->var7)
  {
    MTFESpeechElement::SetPrevCousin(a2, *(this + 12));
  }

  *(this + 12) = a2;
}

MTFESpeechElement *MTFEMarkStress::VisitIntermediatePhrase(MTFEMarkStress *this, MTFESpeechElement *a2)
{
  v2 = a2;
  *(this + 18) = a2;
  do
  {
    result = MTFESpeechElement::VisitChildren(v2, this);
    v5 = v2 == *(this + 18);
    v2 = *(this + 18);
  }

  while (!v5);
  return result;
}

MTFESpeechElement *MTFEMarkStress::VisitWord(MTFEMarkStress *this, MTFEWord *a2)
{
  *(this + 158) = 0;
  *(this + 13) = a2;
  MTFECommands::Visit(&a2->var18, this);
  a2->var22 = *(this + 80);
  v4 = *(this + 153);
  if (*(this + 191) == 1)
  {
    a2->var23 = *(*(this + 2) + 20);
  }

  MTFEMarkStress::CheckPitchChange(this, a2);
  if (*(this + 158) == 1)
  {
    a2->var11 = 3;
  }

  if (!a2->var7)
  {
    *(this + 81) = *(this + 80);
  }

  var11 = a2->var11;
  if ((var11 - 1) >= 2)
  {
    v9 = var11 == 3 || *(*(this + 17) + 156) == 0;
    v10 = !v9;
    if (a2->var11 && !v10)
    {
      v11 = *(this + 18);
      if (*(v11 + 16) != a2)
      {
        *(v11 + 80) = var11;
        if (a2->var15 != 31)
        {
          operator new();
        }
      }

      if (var11 >= 0xB && var11 != 16 && v11 != *(*(v11 + 32) + 16))
      {
        operator new();
      }

      v15 = vdupq_n_s64(0x1F00000uLL);
      v15.i64[0] = var11 << 20;
      *(this + 168) = vorrq_s8(*(this + 168), v15);
    }
  }

  *(this + 8) = 0;
  v6 = (this + 64);
  *(this + 152) = 0;
  v7 = 1;
  *(this + 157) = 1;
  *(this + 14) = a2;
  *(this + 11) = 0;
  *(this + 9) = 0;
  if ((*(this + 153) & 1) == 0 && ((1 << a2->var15) & 0xA5273) == 0)
  {
    v7 = SLWordTagSet::find(&a2->var17);
  }

  *(this + 153) = v7;
  var10 = a2->var10;
  *(this + 154) = var10 == 1;
  if (v4)
  {
    *(this + 155) = 0;
  }

  else
  {
    *(this + 155) = var10 == 2;
    *(this + 156) = var10 == 4;
    if (var10 == 4)
    {
      *(this + 155) = 1;
      a2->var10 = 2;
    }
  }

  result = MTFESpeechElement::VisitChildren(a2, this);
  if (*(this + 152) == 1)
  {
    a2->var8 |= 0x20000u;
  }

  v13 = *(this + 154);
  if (*(this + 153))
  {
    if ((*(this + 154) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((*(this + 154) & 1) == 0)
  {
    a2->var10 = 2;
    goto LABEL_40;
  }

  v14 = *v6;
  if (*v6 || (v14 = *(this + 9)) != 0 || (v14 = *(this + 11)) != 0)
  {
    *(v14 + 72) = *(v14 + 72) & 0xFFFFE3FF | 0x1000;
    ++*(this + 41);
  }

LABEL_40:
  if (!a2->var1)
  {
    result = (*(a2->var0 + 2))(a2);
  }

  *(this + 153) = 0;
  return result;
}

void MTFEMarkStress::VisitPhoneme(MTFEMarkStress *this, MTFESpeechElement *a2)
{
  v4 = BYTE2(a2[1].var0);
  v5 = *(MEMORY[0x277D65560] + BYTE2(a2[1].var0));
  v6 = *(MEMORY[0x277D65568] + 4 * BYTE2(a2[1].var0));
  if (*(this + 190) == 1)
  {
    if (!BYTE2(a2[1].var0))
    {
      v5 = 2;
    }

    *(this + 190) = 0;
  }

  if ((v5 & 2) != 0)
  {
    switch(v4)
    {
      case ':':
        if ((*(this + 152) & 1) == 0)
        {
          v13 = *(this + 22) | 0x1C00;
          *(this + 21) = *(this + 21) & 0xFFFFE3FFLL | 0x800;
          *(this + 22) = v13;
        }

        *(this + 189) = 1;
        goto LABEL_44;
      case ';':
        v12 = *(this + 22) | 0x1C00;
        *(this + 21) = *(this + 21) & 0xFFFFE3FFLL | 0x1000;
        *(this + 22) = v12;
        ++*(this + 41);
        goto LABEL_44;
      case '<':
        v11 = *(this + 10);
        if (v11 && *(this + 11))
        {
          *(v11 + 72) |= 0x80000000;
        }

        v9 = *(this + 21) | 0x10000000;
        goto LABEL_32;
      case '=':
        *(this + 152) = 1;
        goto LABEL_44;
      case '>':
        v14 = *(this + 185) + 1;
        goto LABEL_40;
      case '?':
        v14 = *(this + 185) - 1;
LABEL_40:
        *(this + 185) = v14;
        goto LABEL_44;
      case '@':
        v10 = *(this + 184) + 1;
        goto LABEL_26;
      case 'A':
        v10 = *(this + 184) - 1;
LABEL_26:
        *(this + 184) = v10;
        goto LABEL_44;
      case 'B':
        v9 = *(this + 21) | 0x20000;
        goto LABEL_32;
      case 'C':
        v9 = *(this + 21) | 0x40000;
LABEL_32:
        *(this + 21) = v9;
        goto LABEL_44;
      case 'D':
      case 'E':
      case 'F':
      case 'G':
      case 'H':
        MTFEMarkStress::AdjustParameters(this, a2);
        BYTE2(a2[1].var0) = 0;
        LODWORD(a2[1].var3) |= 0x80000u;
        *(*(this + 17) + 158) = v4;
        *(this + 190) = 1;
        return;
      case 'I':
        goto LABEL_44;
      case 'J':
        *(this + 154) = 1;
        goto LABEL_42;
      case 'K':
LABEL_42:
        v16 = (this + 168);
        v15 = *(this + 21);
        *(this + 153) = 1;
        *(this + 11) = 0;
        goto LABEL_43;
      default:
        if (v4 == 2)
        {
          v16 = (this + 168);
          v15 = *(this + 21);
          v19 = *(this + 153);
          *(this + 11) = 0;
          *(this + 21) = v15 | 0x10000;
          if (v19)
          {
LABEL_43:
            *v16 = v15 | 0x12000;
          }
        }

        else if (v4 == 1)
        {
          v7 = *(this + 21) & 0xFFFFE3FFLL;
          if (*(this + 152) & 1) != 0 || *(this + 153) != 1 || (*(this + 155))
          {
            *(this + 21) = v7 | 0x800;
            v8 = *(this + 156);
            *(this + 189) = v8;
          }

          else
          {
            *(this + 21) = v7 | 0x400;
            ++*(this + 41);
            v8 = *(this + 156);
          }

          *(this + 22) |= 0x1C00uLL;
          *(this + 188) = (v8 & 1) == 0;
        }

LABEL_44:
        v17 = *(a2->var0 + 2);
        v18 = a2->var0 + 2;

        v17(a2);
        break;
    }
  }

  else
  {
    if (v6)
    {
      *(this + 157) = 0;
      *(this + 10) = a2;
      if (!*(this + 11))
      {
        *(this + 11) = a2;
      }
    }

    else if (*(this + 157) == 1)
    {
      LODWORD(a2[1].var3) |= 0x80u;
    }

    MTFEMarkStress::AdjustParameters(this, a2);
  }
}

uint64_t MTFEMarkStress::VisitCommand(uint64_t this, MTFECommand *a2)
{
  v3 = this;
  var8 = a2->var8;
  if (var8 <= 1918989425)
  {
    if (var8 > 1885495665)
    {
      if ((var8 - 1885495666) < 2)
      {
        *(this + 128) = 1;
        return this;
      }

      if (var8 == 1918989413)
      {
        if (*(this + 191) == 1)
        {
          v12 = *(this + 16);
          v13 = SWORD1(a2->var9);
LABEL_24:
          MTBEParam::SetTempo(v12, v13);
          goto LABEL_51;
        }

        v10 = *(&a2->var9 + 2);
LABEL_42:
        if (v10 <= 40)
        {
          LOWORD(v10) = 40;
        }

LABEL_44:
        *(this + 160) = v10;
        goto LABEL_51;
      }

      return this;
    }

    if (var8 != 1835102827)
    {
      if (var8 != 1852798053)
      {
        return this;
      }

      *(this + 186) = a2->var9 & 0xF00 | BYTE2(LODWORD(a2->var9));
      v9 = *(this + 8);
      *(*(this + 16) + 48) = 1;
      LOWORD(v10) = *(v9 + 90);
      goto LABEL_44;
    }

    goto LABEL_51;
  }

  if (var8 > 1936485986)
  {
    if (var8 == 1936485987)
    {
      v14 = *(this + 104);
      if (v14)
      {
        v15 = *(v14 + 48);
        v16 = *(v14 + 63) > 2u || v15 == 0;
        if (!v16 && (*(v15 + 56) & 0x40) == 0)
        {
          if (kMTFESilencePhrase)
          {
            MTBEDebugParams::GetParam(kMTFESilencePhrase, &byte_27F8F0968, byte_27F8F0968);
            kMTFESilencePhrase = 0;
          }

          if (byte_27F8F0968 == 1)
          {
            operator new();
          }
        }
      }

      if (a2->var9 >= 1)
      {
        v17 = *(v3 + 112);
        operator new();
      }

      goto LABEL_51;
    }

    if (var8 != 1953329263)
    {
      if (var8 != 1953456745)
      {
        return this;
      }

      var9 = a2->var9;
      v6 = vcvts_n_f32_u64(var9 & 0xFFFFFF, 0x10uLL);
      v7 = var9 >> 24;
      if ((v7 - 1) < 3)
      {
        v18 = *(this + 144);
        *(v18 + 81) = v7;
        *(v18 + 84) = v6;
        *(this + 158) = 1;
      }

      else
      {
        if ((v7 - 5) < 2)
        {
          v8 = *(this + 136);
          *(v8 + 157) = v7;
          *(v8 + 200) = v6;
          goto LABEL_51;
        }

        if (v7 != 4)
        {
          *(this + 153) = 1;
          return this;
        }
      }

      *(*(this + 136) + 156) = 1;
    }

LABEL_51:
    v19 = *(a2->var0 + 2);

    return v19(a2);
  }

  if (var8 == 1918989426)
  {
    if (*(this + 191) == 1)
    {
      v12 = *(this + 16);
      v13 = (v12[10] + WORD1(a2->var9));
      goto LABEL_24;
    }

    v10 = (*(this + 160) + WORD1(a2->var9));
    goto LABEL_42;
  }

  if (var8 == 1920165236)
  {
    if (*(*(this + 16) + 48) == 1)
    {
      v11 = *(*(this + 8) + 90);
    }

    else
    {
      this = *(this + 24);
      if (this && a2->var9 == 1)
      {
        this = MTBEParam::GetRate(this);
        *(v3 + 160) = this;
        return this;
      }

      v11 = *(*(v3 + 8) + 6);
    }

    *(v3 + 160) = v11;
  }

  return this;
}

void MTFEMarkStress::~MTFEMarkStress(MTFEMarkStress *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEConnectedSpeech::VisitIntonationalPhrase(MTFETrackingVisitor *this, MTFESpeechElement *a2)
{
  *(this + 168) = 0;
  v2 = MEMORY[0x277D65568];
  *(this + 192) = 0;
  v3 = *v2;
  *(this + 25) = v3;
  *(this + 11) = 0;
  *(this + 12) = v3;
  *(this + 22) = 0;
  *(this + 23) = v3;
  *(this + 5) = 0;
  *(this + 83) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 82) = a2[3].var6 != 0;
  return MTFETrackingVisitor::VisitIntonationalPhrase(this, a2);
}

MTFESpeechElement *MTFEConnectedSpeech::VisitWord(MTFEConnectedSpeech *this, MTFESpeechElement *a2)
{
  *(this + 4) = a2;
  *(this + 78) = a2[1].var0 & 1;
  *(this + 79) = SLWordTagSet::find((&a2[1].var5 + 4));
  *(this + 81) = a2->var6 == 0;

  return MTFETrackingVisitor::VisitWord(this, a2);
}

MTFESpeechElement *MTFEConnectedSpeech::VisitSyllable(MTFEConnectedSpeech *this, MTFESpeechElement *a2)
{
  v3 = *(this + 81);
  if (v3 == 1 && a2->var6)
  {
    *(this + 81) = 0;
  }

  v4 = *(this + 5);
  *(this + 5) = a2;
  *(this + 6) = v4;
  result = MTFETrackingVisitor::VisitSyllable(this, a2);
  *(this + 81) = v3;
  return result;
}

uint64_t MTFEConnectedSpeech::AddTag(MTFEConnectedSpeech *this, int a2)
{
  v4 = (*(this + 4) + 92);
  if ((SLWordTagSet::find(v4) & 1) == 0)
  {
    v5 = v4->var0[0];
    if (v5 <= 6)
    {
      v6 = v5 + 1;
      v4->var0[0] = v6;
      v4->var0[v6] = a2;
    }
  }

  v7 = *(this + 4) + 92;

  return MEMORY[0x2821CC808](v7, a2 ^ 1u);
}

uint64_t MTFEConnectedSpeech::VisitPhoneme(MTFEConnectedSpeech *this, MTFEPhoneme *a2)
{
  MTFETrackingVisitor::PrePhoneme(this, a2);
  v5 = *(this + 7);
  v6 = *(this + 8);
  v7 = &MTFEPhonemeFlags::sSIL;
  v8 = MEMORY[0x277D65568];
  if (*(this + 56) == 0)
  {
    var9 = a2->var9;
    *(this + 104) = var9;
    *(this + 14) = a2->var15;
    var6 = a2->var6;
    if (!var6)
    {
      var6 = &MTFEPhonemeFlags::sSIL;
    }

    v11 = BYTE2(var6[1].var0);
    *(this + 128) = v11;
    *(this + 17) = LODWORD(var6[1].var3);
    v12 = var6->var6;
    if (!v12)
    {
      v12 = &MTFEPhonemeFlags::sSIL;
    }

    *(this + 152) = BYTE2(v12[1].var0);
    *(this + 20) = LODWORD(v12[1].var3);
    v13 = v12->var6;
    if (v13)
    {
      v6 = v13;
    }

    else
    {
      v6 = &MTFEPhonemeFlags::sSIL;
    }

    *(this + 8) = v6;
    *(this + 15) = *(v8 + 4 * var9);
    *(this + 18) = *(v8 + 4 * v11);
  }

  *(this + 208) = *(this + 192);
  v14 = *(this + 25);
  *(this + 27) = v14;
  v15 = *(this + 168);
  *(this + 192) = v15;
  v16 = *(this + 23);
  *(this + 25) = v16;
  v17 = *(this + 84);
  *(this + 168) = v17;
  *(this + 11) = *(this + 88);
  v18 = *(this + 104);
  *(this + 84) = v18;
  v19 = *(this + 7);
  *(this + 88) = v19;
  v20 = *(this + 128);
  *(this + 104) = v20;
  v21 = *(this + 18);
  *(this + 14) = *(this + 17);
  *(this + 15) = v21;
  v22 = *(this + 152);
  *(this + 128) = v22;
  *(this + 17) = *(this + 20);
  *(this + 18) = *(v8 + 4 * v22);
  *(this + 152) = BYTE2(v6[1].var0);
  *(this + 20) = LODWORD(v6[1].var3);
  v23 = v6->var6;
  if (v23)
  {
    v7 = v23;
  }

  *(this + 8) = v7;
  if (*(this + 76) != 1)
  {
    if (v18 == 33)
    {
      v24 = 0;
      if ((v19 & 0x1C80) == 0 && (v17 & 0xFE) == 0xA)
      {
        *(v5 + 58) = 28;
        goto LABEL_312;
      }

LABEL_33:
      v27 = kRhotacizeAX;
      if (kRhotacizeAX)
      {
        MTBEDebugParams::GetParam(kRhotacizeAX, &byte_27F8F0988, byte_27F8F0988);
        kRhotacizeAX = 0;
      }

      if (byte_27F8F0988 == 1 && *(this + 84) == 32 && *(this + 168) == 11)
      {
        *(*(this + 7) + 58) = 12;
      }

      v28 = *(this + 11);
      if ((v28 & 0x10001C80) == 0 && (*(this + 184) & 8) != 0)
      {
        v29 = *(this + 84);
        if (v29 == 33)
        {
          v18 = 27;
        }

        else if (v29 == 32)
        {
          v30 = *(this + 168);
          v18 = 26;
          if (v30 <= 8)
          {
            if (*(this + 168) <= 6u)
            {
              if (v30 - 3 < 2)
              {
                v31 = *(this + 7);
                v32 = 20;
                goto LABEL_83;
              }

              if (v30 - 5 >= 2)
              {
                goto LABEL_84;
              }

              goto LABEL_69;
            }

            if (v30 == 7)
            {
              v31 = *(this + 7);
              v32 = 22;
              goto LABEL_83;
            }

            if (v30 != 8)
            {
              goto LABEL_84;
            }

LABEL_78:
            v31 = *(this + 7);
            v32 = 12;
            goto LABEL_83;
          }

          if (*(this + 168) <= 0xCu)
          {
            if (v30 != 9)
            {
              if (v30 != 10)
              {
                if (v30 != 11)
                {
                  goto LABEL_84;
                }

                goto LABEL_78;
              }

LABEL_68:
              v31 = *(this + 7);
              v32 = 24;
              goto LABEL_83;
            }

LABEL_80:
            v31 = *(this + 7);
            v32 = 23;
            goto LABEL_83;
          }

          switch(v30)
          {
            case 0xDu:
LABEL_69:
              if (*(this + 76))
              {
                v18 = 26;
                break;
              }

              v31 = *(this + 7);
              v32 = 21;
LABEL_83:
              *(v31 + 58) = v32;
              v18 = 26;
              v24 = 1;
              break;
            case 0x11u:
              goto LABEL_80;
            case 0x12u:
              goto LABEL_68;
          }
        }
      }

LABEL_84:
      if ((*(this + 76) & 1) == 0 && (*(this + 176) & 0x80) != 0 && *(this + 168) == 31 && *(this + 104) != 32 && (v28 & 0xF) != 0 && *(this + 84) == 18)
      {
        v33 = *(this + 7);
        *(v33 + 58) = 19;
        *(v33 + 72) = *(v33 + 72) & 0xFFFFE000 | v28;
        v24 = 1;
      }

      if ((*(this + 78) & 1) != 0 || *(this + 168) != 41 || (*(this + 176) & 0x80) == 0 || (v28 & 0xF) == 0 || *(this + 84) != 11)
      {
        goto LABEL_124;
      }

      LODWORD(v34) = *(this + 104);
      if (!*(this + 104))
      {
        v27 = MTFEConnectedSpeech::PrecedingQuote(v27, a2);
        if (v27)
        {
          MTFESpeechPedigree::MTFESpeechPedigree(v90, a2);
          v35 = *(*&v90[1] + 40);
          do
          {
            v36 = v35;
            v35 = v35[2];
          }

          while (v35);
          v37 = &MTFEPhonemeFlags::sSIL;
          while (!*(v36 + 58))
          {
            v36 = v36[5];
            if (!v36)
            {
              v36 = &MTFEPhonemeFlags::sSIL;
              break;
            }
          }

          v34 = *(v36 + 58);
          LODWORD(v38) = *(v8 + 4 * v34);
          v39 = v36[5];
          if (!v39)
          {
            v39 = &MTFEPhonemeFlags::sSIL;
          }

          v40 = *(v39 + 58);
          LODWORD(v41) = *(v8 + 4 * *(v39 + 58));
          v42 = v39[5];
          if (v42)
          {
            v37 = v42;
          }

          v43 = v37[58];
          MTFESpeechVisitor::~MTFESpeechVisitor(v90);
          v44 = v40;
LABEL_111:
          if (v38)
          {
            v45 = 3;
            LODWORD(v4) = 1032;
            goto LABEL_123;
          }

          v45 = 25;
          v4 = 1034;
          if (v34 == 19 || v34 == 31 || v34 == 34 && ((v41 & 0x200000) != 0 || v44 == 31))
          {
            goto LABEL_123;
          }

          if ((v38 & 2) != 0)
          {
            if (v44 > 0x1F)
            {
              goto LABEL_180;
            }

            if (((1 << v44) & 0x2102018) == 0)
            {
              if (((1 << v44) & 0x40060) == 0)
              {
                if (((1 << v44) & 0x80080000) != 0)
                {
                  goto LABEL_123;
                }

                goto LABEL_180;
              }

              goto LABEL_175;
            }
          }

          else
          {
            if (v44 > 0x19)
            {
              goto LABEL_180;
            }

            if (((1 << v44) & 0x2102018) == 0)
            {
              if (((1 << v44) & 0x40060) == 0)
              {
                goto LABEL_180;
              }

LABEL_175:
              v61 = v34 - 36;
              if ((v34 - 36) >= 0x12)
              {
                goto LABEL_180;
              }

              v62 = 209825;
LABEL_179:
              if ((v62 >> v61))
              {
                goto LABEL_123;
              }

LABEL_180:
              if (v43 > 0x1F)
              {
                goto LABEL_124;
              }

              if (((1 << v43) & 0x82102018) == 0)
              {
                if (((1 << v43) & 0x40060) == 0)
                {
                  goto LABEL_124;
                }

LABEL_341:
                if (v34 == 42 && v44 <= 0x2E)
                {
                  v63 = 1 << v44;
                  v64 = 0x400A00000000;
                  goto LABEL_375;
                }

LABEL_124:
                if (*(this + 78))
                {
                  goto LABEL_160;
                }

                if (*(this + 84) != 11)
                {
                  goto LABEL_160;
                }

                v46 = *(this + 11);
                if ((v46 & 0xF) == 0 || (v46 & 0x11C00) != 0x10000)
                {
                  goto LABEL_160;
                }

                v47 = *(this + 104);
                if (!*(this + 104))
                {
                  if (MTFEConnectedSpeech::PrecedingQuote(v27, a2))
                  {
                    MTFESpeechPedigree::MTFESpeechPedigree(v90, a2);
                    v48 = *(*&v90[1] + 40);
                    do
                    {
                      v49 = v48;
                      v48 = v48[2];
                    }

                    while (v48);
                    while (!*(v49 + 58))
                    {
                      v49 = v49[5];
                      if (!v49)
                      {
                        v49 = &MTFEPhonemeFlags::sSIL;
                        break;
                      }
                    }

                    v47 = *(v49 + 58);
                    LODWORD(v50) = *(v8 + 4 * *(v49 + 58));
                    v51 = v49[5];
                    if (!v51)
                    {
                      v51 = &MTFEPhonemeFlags::sSIL;
                    }

                    v52 = v51[58];
                    LODWORD(v53) = *(v8 + 4 * v51[58]);
                    MTFESpeechVisitor::~MTFESpeechVisitor(v90);
LABEL_140:
                    v54 = 25;
                    if (v47 > 48)
                    {
                      if ((v47 - 52) >= 2 && (v47 != 49 || v52 != 45))
                      {
                        goto LABEL_152;
                      }
                    }

                    else
                    {
                      if (v47 == 31)
                      {
                        goto LABEL_161;
                      }

                      if (v47 != 34)
                      {
                        if (v47 == 48 && v52 == 44)
                        {
                          goto LABEL_161;
                        }

LABEL_152:
                        v55 = *(this + 168);
                        if (v55 <= 0x35 && ((1 << v55) & 0x330F100000E008) != 0)
                        {
                          if ((v50 & 0x2000) != 0)
                          {
                            goto LABEL_159;
                          }

                          if (v47 <= 0x33 && ((1 << v47) & 0xC400000000000) != 0 && v52 <= 0x19)
                          {
                            v54 = v18;
                            if (((1 << v52) & 0x2100038) == 0)
                            {
                              goto LABEL_161;
                            }

LABEL_159:
                            v54 = 25;
                            goto LABEL_161;
                          }
                        }

LABEL_160:
                        v54 = v18;
                        goto LABEL_161;
                      }

                      if ((v53 & 0x200000) == 0 && v52 != 31)
                      {
                        goto LABEL_152;
                      }
                    }

LABEL_161:
                    v56 = *(this + 78);
                    if ((v56 & 1) != 0 || *(this + 84) != 48 || *(this + 104) != 18 || (v57 = *(this + 14), (v57 & 0xF) == 0) || (v57 & 0x1C00) != 0 || (*(this + 11) & 0x10000) == 0 || !*(this + 168))
                    {
LABEL_193:
                      if (*(this + 76))
                      {
                        v25 = 0;
                        v65 = 1;
                        goto LABEL_206;
                      }

                      if ((*(this + 96) & 1) != 0 && (*(this + 120) & 1) != 0 && (*(this + 113) & 0x1C) != 0)
                      {
                        v25 = *(this + 88) & 1;
                        if (v56)
                        {
                          goto LABEL_205;
                        }
                      }

                      else
                      {
                        v25 = 0;
                        if (v56)
                        {
LABEL_205:
                          v65 = 0;
LABEL_206:
                          v67 = *(this + 84);
                          if (v67 == 48)
                          {
                            v66 = *(this + 104);
                            if ((v56 & 1) == 0 && v66 == 10)
                            {
                              if (*(this + 112) & 0xF) != 0 && (*(this + 89) & 0x1C) != 0 && (!*(this + 128) || (*(this + 144)))
                              {
                                v66 = 18;
                                *(this + 104) = 18;
LABEL_236:
                                if (*(this + 79) == 1 && *(this + 168) - 35 < 3 || (v66 == 25 || v66 == 11) && *(this + 128) == 36)
                                {
                                  goto LABEL_243;
                                }

                                v71 = *(this + 168);
                                if (v71 <= 0x21 && ((1 << v71) & 0x218000000) != 0)
                                {
                                  goto LABEL_243;
                                }

                                if ((v56 & 1) == 0 && v66 <= 0x19 && ((1 << v66) & 0x2040C00) != 0)
                                {
                                  v75 = *(this + 14);
                                  if ((v75 & 0xF) != 0 && (v75 & 0x1C00) == 0 && (*(this + 11) & 0x10000) != 0 && v71 <= 0x20 && ((1 << v71) & 0x105F01000) != 0)
                                  {
                                    goto LABEL_243;
                                  }
                                }

                                if ((*(this + 120) & 1) == 0 || (*(v8 + 4 * *(this + 83)) & 0x50) != 0x10)
                                {
                                  goto LABEL_243;
                                }

                                v76 = *(this + 14);
                                if ((v76 & 0x10000) != 0)
                                {
                                  if ((*(this + 81) & 1) == 0)
                                  {
                                    goto LABEL_338;
                                  }

                                  goto LABEL_243;
                                }

                                if ((*(this + 44) & 0x1C80) != 0)
                                {
                                  goto LABEL_243;
                                }

                                if (v66 <= 11)
                                {
                                  if (v66 != 3)
                                  {
                                    if (v66 != 8 && v66 != 11)
                                    {
                                      goto LABEL_243;
                                    }

                                    if ((v76 & 0x1C00) == 0 && *(this + 128) == 32)
                                    {
                                      goto LABEL_338;
                                    }

                                    if (v66 != 11)
                                    {
                                      goto LABEL_243;
                                    }
                                  }
                                }

                                else
                                {
                                  if (v66 <= 24)
                                  {
                                    if (v66 == 12)
                                    {
                                      goto LABEL_338;
                                    }

                                    if (v66 == 17)
                                    {
                                      v77 = *(this + 7);
                                      if (v77)
                                      {
                                        if ((*(v77 + 73) & 0x1C) != 0 && (*(this + 128) != 32 || (*(this + 136) & 0x80) != 0))
                                        {
                                          goto LABEL_338;
                                        }
                                      }
                                    }

                                    goto LABEL_243;
                                  }

                                  if (v66 != 25 && v66 != 28)
                                  {
                                    goto LABEL_243;
                                  }
                                }

                                if (*(this + 128) != 32)
                                {
                                  if ((v76 & 0x400) == 0)
                                  {
                                    goto LABEL_338;
                                  }

                                  goto LABEL_243;
                                }

                                if ((v76 & 0x400) != 0 || (*(this + 17) & 0x80) == 0)
                                {
                                  goto LABEL_243;
                                }

LABEL_338:
                                if (v24)
                                {
                                  goto LABEL_312;
                                }

LABEL_271:
                                if (a2->var9 != 55)
                                {
                                  MTFEDuration::AdjustDurationForFlap(a2, v4);
                                }

                                v26 = 0;
                                LOBYTE(v18) = 55;
                                goto LABEL_319;
                              }

                              v66 = 10;
LABEL_226:
                              if ((*(this + 88) & 0xF) != 0)
                              {
                                if (((*(this + 121) & 1) == 0 || v66 == 29) && v66 != 34)
                                {
                                  v65 = 1;
                                }
                              }

                              else if (v66 != 29)
                              {
                                if (v66 != 25)
                                {
                                  goto LABEL_236;
                                }

                                if (*(this + 128) == 36)
                                {
                                  v74 = v65;
                                }

                                else
                                {
                                  v74 = 1;
                                }

                                if (v74)
                                {
                                  v66 = 25;
                                  goto LABEL_236;
                                }

LABEL_262:
                                if ((*(v8 + 4 * *(this + 83)) & 0x10) == 0)
                                {
                                  if (v56)
                                  {
                                    v18 = v54;
                                  }

                                  else
                                  {
                                    v18 = 49;
                                  }

                                  if (v24)
                                  {
LABEL_312:
                                    v78 = *(this + 7);
                                    if (!v78)
                                    {
LABEL_332:
                                      MTFETrackingVisitor::DelPhoneme(this);
                                      *(this + 18) += a2->var11;
                                      (*(a2->var0 + 2))(a2);
                                      goto LABEL_333;
                                    }

                                    *(v78 + 60) += a2->var11;
                                    if (*(this + 78) == 1)
                                    {
                                      v79 = *(v78 + 80);
                                      if (!v79)
                                      {
                                        operator new();
                                      }

                                      v80 = *(v78 + 64);
                                      var17 = a2->var17;
                                      if (var17)
                                      {
                                        v82 = *(var17 + 1);
                                        v90[0] = *var17;
                                        v90[1] = v82;
                                        v83 = *(var17 + 2);
                                        v84 = *(var17 + 3);
                                        v85 = *(var17 + 4);
                                        *&v90[5] = *(var17 + 10);
                                        v90[3] = v84;
                                        v90[4] = v85;
                                        v90[2] = v83;
                                      }

                                      else
                                      {
                                        LODWORD(v90[0]) = 0;
                                        memset(v90 + 8, 0, 80);
                                      }

                                      MTFEPitchTargets::CombineWithTargets(v79, v80, v90, a2->var13);
                                    }

                                    if ((*(this + 77) & 1) != 0 || *(this + 78) == 1)
                                    {
                                      v86 = *(this + 7);
                                      var13 = a2->var13 + *(v86 + 64);
                                    }

                                    else
                                    {
                                      var13 = a2->var13;
                                      if (var13 >= 0.9999 && var13 <= 1.0001)
                                      {
LABEL_330:
                                        if ((*(this + 91) & 0x10) != 0)
                                        {
                                          LODWORD(a2->var6[1].var3) |= 0x10000000u;
                                        }

                                        goto LABEL_332;
                                      }

                                      v86 = *(this + 7);
                                    }

                                    *(v86 + 64) = var13;
                                    goto LABEL_330;
                                  }

LABEL_270:
                                  if (v18 == 55)
                                  {
                                    goto LABEL_271;
                                  }

LABEL_318:
                                  v26 = 0;
                                  goto LABEL_319;
                                }

                                v54 = 54;
LABEL_269:
                                v18 = v54;
                                if (v24)
                                {
                                  goto LABEL_312;
                                }

                                goto LABEL_270;
                              }

LABEL_235:
                              if (v65)
                              {
                                goto LABEL_236;
                              }

                              goto LABEL_262;
                            }

LABEL_225:
                            if ((v66 | 8) == 0x29)
                            {
                              goto LABEL_235;
                            }

                            goto LABEL_226;
                          }

LABEL_218:
                          if (v67 != 41 || (*(this + 89) & 4) != 0)
                          {
                            goto LABEL_243;
                          }

                          v68 = *(*(this + 7) + 58);
                          if ((v68 - 48) >= 2)
                          {
                            if (v68 == 36)
                            {
                              if ((*(this + 80) & 1) == 0 && (*(this + 82) & 1) == 0)
                              {
                                LOBYTE(v18) = 36;
                                goto LABEL_311;
                              }

LABEL_243:
                              if (v54 == 11)
                              {
                                v72 = *(this + 168);
                                if (*(this + 168))
                                {
                                  v73 = *(this + 104);
                                  if (*(this + 104))
                                  {
                                    if (v72 > 0x37)
                                    {
LABEL_276:
                                      LOBYTE(v18) = 11;
                                      if (v73 > 0x1F || ((1 << v73) & 0x80000018) == 0)
                                      {
                                        goto LABEL_310;
                                      }

                                      goto LABEL_309;
                                    }

                                    if (((1 << v72) & 0x830F1000000000) != 0)
                                    {
                                      LOBYTE(v18) = 11;
                                      if (v73 <= 0x35)
                                      {
                                        if (((1 << v73) & 0x30F1080000018) == 0)
                                        {
                                          if (((1 << v73) & 0x30300000000000) != 0)
                                          {
                                            if (v72 == 55)
                                            {
                                              LOBYTE(v18) = 11;
                                            }

                                            else
                                            {
                                              LOBYTE(v18) = 25;
                                            }
                                          }

                                          goto LABEL_310;
                                        }

                                        goto LABEL_309;
                                      }

LABEL_310:
                                      *(this + 84) = v18;
LABEL_311:
                                      if (v24)
                                      {
                                        goto LABEL_312;
                                      }

                                      goto LABEL_318;
                                    }

                                    if (((1 << v72) & 0xE000) != 0)
                                    {
                                      if (*(this + 114))
                                      {
                                        LOBYTE(v18) = 11;
                                        if (v73 > 0x35)
                                        {
                                          goto LABEL_310;
                                        }

                                        if (((1 << v73) & 0x330F1282182078) != 0)
                                        {
                                          goto LABEL_309;
                                        }

                                        if (((1 << v73) & 0x400400000000) == 0)
                                        {
                                          goto LABEL_310;
                                        }

                                        if ((*(this + 146) & 0x20) != 0 || *(this + 128) == 20)
                                        {
                                          goto LABEL_309;
                                        }

                                        goto LABEL_303;
                                      }
                                    }

                                    else if (((1 << v72) & 0x80000018) == 0)
                                    {
                                      goto LABEL_276;
                                    }

                                    if (v73 != 32 || (*(this + 115) & 0x10) != 0)
                                    {
LABEL_309:
                                      LOBYTE(v18) = 25;
                                      goto LABEL_310;
                                    }

LABEL_303:
                                    LOBYTE(v18) = 11;
                                    goto LABEL_310;
                                  }
                                }

                                v54 = 11;
                              }

                              goto LABEL_269;
                            }

                            if (v68 != 54)
                            {
                              goto LABEL_243;
                            }
                          }

                          if ((v65 & 1) == 0)
                          {
                            LOBYTE(v18) = 57;
                            goto LABEL_311;
                          }

                          goto LABEL_243;
                        }
                      }

                      if ((*(this + 82) & 1) == 0)
                      {
                        v66 = *(this + 104);
                        if ((v66 == 31 || v66 == 19) && (*(this + 113) & 0x1C) == 0)
                        {
                          v65 = 0;
                          v67 = *(this + 84);
                          if (v67 == 48)
                          {
                            goto LABEL_225;
                          }

                          if (v67 == 49)
                          {
                            v54 = 53;
                            goto LABEL_269;
                          }

                          goto LABEL_218;
                        }
                      }

                      goto LABEL_205;
                    }

                    v58 = *(this + 128);
                    if (v58 == 31)
                    {
                      v59 = 25;
                      v60 = 25;
                    }

                    else
                    {
                      if ((*(this + 18) & 0x12000) != 0)
                      {
                        v60 = 25;
                      }

                      else
                      {
                        v60 = 18;
                        if (v58 > 0x32)
                        {
LABEL_192:
                          *(this + 15) = *(v8 + 4 * v60);
                          goto LABEL_193;
                        }

                        if (((1 << v58) & 0x4D0C940000000) == 0)
                        {
                          if (v58 != 34)
                          {
                            goto LABEL_192;
                          }

                          v60 = 25;
                          v59 = 25;
                          if ((*(v8 + 4 * *(this + 152)) & 0x200000) == 0 && *(this + 152) != 31)
                          {
                            v60 = 18;
                            goto LABEL_192;
                          }

                          goto LABEL_191;
                        }

                        v60 = 11;
                      }

                      v59 = v60;
                    }

LABEL_191:
                    *(this + 104) = v59;
                    goto LABEL_192;
                  }

                  v47 = *(this + 104);
                }

                v50 = *(this + 15);
                v52 = *(this + 128);
                v53 = *(this + 18);
                goto LABEL_140;
              }

              if (v34 <= 43)
              {
                if ((v34 - 39) < 2)
                {
                  if (v44 != 32)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_123;
                }

                if (v34 == 38)
                {
                  goto LABEL_354;
                }

                if (v34 != 42 || v44 > 0x32)
                {
                  goto LABEL_124;
                }

                v63 = 1 << v44;
                v89 = 0x401A40000000;
              }

              else
              {
                if (v34 > 0x33)
                {
                  goto LABEL_124;
                }

                if (((1 << v34) & 0x7400000000000) != 0)
                {
                  if (v44 > 0x2D)
                  {
                    goto LABEL_124;
                  }

                  v63 = 1 << v44;
                  v64 = 0x300140000000;
                  goto LABEL_375;
                }

                if (((1 << v34) & 0x8800000000000) != 0)
                {
LABEL_354:
                  if ((v44 & 0xFE) != 0x20)
                  {
                    goto LABEL_341;
                  }

LABEL_123:
                  v27 = MTFEConnectedSpeech::AddTag(this, v4);
                  v18 = v45;
                  goto LABEL_124;
                }

                if (v34 != 44 || v44 > 0x32)
                {
                  goto LABEL_124;
                }

                v63 = 1 << v44;
                v89 = 0x400000000000;
              }

              v64 = v89 & 0xFFFFFFFFFFFFLL | 0x5000000000000;
LABEL_375:
              if ((v63 & v64) == 0)
              {
                goto LABEL_124;
              }

              goto LABEL_123;
            }
          }

          v61 = v34 - 30;
          if ((v34 - 30) >= 0x18)
          {
            goto LABEL_180;
          }

          v62 = 16777189;
          goto LABEL_179;
        }

        LODWORD(v34) = *(this + 104);
      }

      v38 = *(this + 15);
      v44 = *(this + 128);
      v41 = *(this + 18);
      v43 = *(this + 152);
      goto LABEL_111;
    }

    if (v18 == 36)
    {
      v24 = 0;
      if (v17 != 25)
      {
        goto LABEL_33;
      }

      if ((v16 & 0x400) == 0)
      {
        goto LABEL_33;
      }

      v24 = 0;
      if (v15 == 47 || v15 == 51)
      {
        goto LABEL_33;
      }

      if (v15 != 49 || (v14 & 1) == 0)
      {
        *(v5 + 58) = 29;
        v24 = 1;
        goto LABEL_33;
      }
    }

LABEL_32:
    v24 = 0;
    goto LABEL_33;
  }

  if (v17 != 42)
  {
    goto LABEL_32;
  }

  v24 = 0;
  if (v18 > 0x32 || ((1 << v18) & 0x5400000000000) == 0)
  {
    goto LABEL_33;
  }

  if ((v19 & 0x70000000) != 0)
  {
    goto LABEL_32;
  }

  if (v20 > 30)
  {
    if ((v20 - 32) < 2)
    {
      v25 = 0;
      goto LABEL_54;
    }

    if (v20 == 31)
    {
      v25 = 0;
      if (v18 == 48)
      {
        goto LABEL_72;
      }

      goto LABEL_54;
    }

LABEL_71:
    v25 = 0;
    if ((v21 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_54:
    v26 = 1;
    goto LABEL_319;
  }

  if (v20 == 10 || v20 == 18)
  {
    if (v18 == 46)
    {
      v25 = 0;
      v26 = 1;
      LOBYTE(v18) = 46;
      goto LABEL_319;
    }

    v24 = 0;
    v26 = 1;
    if (v22 != 32 || (v19 & 0x1400) != 0)
    {
      v25 = 0;
      goto LABEL_319;
    }

    goto LABEL_33;
  }

  if (v20 != 30)
  {
    goto LABEL_71;
  }

  v25 = 0;
  if (v18 != 50)
  {
LABEL_72:
    v24 = 0;
    goto LABEL_33;
  }

  v26 = 1;
  LOBYTE(v18) = 50;
LABEL_319:
  *(this + 7) = a2;
  a2->var9 = v18;
  a2->var10 = v26;
  a2->var11 += *(this + 36);
  if (v26)
  {
    MTFEDuration::AdjustDurationForAspiration(a2, v4);
  }

  if (v25)
  {
    operator new();
  }

  *(this + 83) = *(*(this + 7) + 58);
  *(this + 18) += a2->var11;
LABEL_333:
  *(this + 80) = 0;
  return MTFETrackingVisitor::PostPhoneme(this, a2);
}

BOOL MTFEConnectedSpeech::PrecedingQuote(MTFEConnectedSpeech *this, MTFESpeechElement *a2)
{
  while (1)
  {
    var6 = a2->var6;
    if (!var6)
    {
      break;
    }

    a2 = a2->var6;
    if (BYTE2(var6[1].var0))
    {
      return 0;
    }
  }

  MTFESpeechPedigree::MTFESpeechPedigree(v6, a2);
  v4 = *(v6[2] + 40);
  v3 = v4 && *(v4 + 176) && (*(v4 + 184) & 3) == 1;
  MTFESpeechVisitor::~MTFESpeechVisitor(v6);
  return v3;
}

void MTFEConnectedSpeech::~MTFEConnectedSpeech(MTFEConnectedSpeech *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFECalcRampSteps::VisitSentence(MTFECalcRampSteps *this, MTFESpeechElement *a2)
{
  *(this + 6) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  v4 = *(this + 2);
  *(v4 + 30) = 0;
  *(v4 + 32) = *(v4 + 56);
  return result;
}

MTFESpeechElement *MTFECalcRampSteps::VisitIntonationalPhrase(MTFECalcRampSteps *this, MTFESpeechElement *a2)
{
  *(this + 8) = BYTE6(a2[2].var6);
  *(this + 7) = 1065353216;
  return MTFESpeechElement::VisitChildren(a2, this);
}

float MTFECalcRampSteps::VisitPhoneme(MTFECalcRampSteps *this, MTFEPhoneme *a2)
{
  var15 = a2->var15;
  if ((var15 & 0x1F00008) != 0)
  {
    v3 = *(this + 2);
    v4 = ((*(v3 + 26) - *(v3 + 28)) / *(this + 7));
    v5 = vcvtd_n_s64_f64(v4, 0x10uLL);
    v6 = v3 + 56;
    v7 = *(this + 6);
    *(v6 + 8 * v7) = v5;
    if ((var15 & 0x1F00000) == 0 && *(this + 8) - 68 <= 3 && *(this + 8) != 70)
    {
      *(v6 + 8 * v7) = v5 >> 1;
    }

    if (v7 <= 15)
    {
      *(this + 6) = v7 + 1;
    }

    *(this + 7) = 1065353216;
  }

  else
  {
    *&v4 = a2->var13 + *(this + 7);
    *(this + 7) = LODWORD(v4);
  }

  return *&v4;
}

void MTFECalcRampSteps::~MTFECalcRampSteps(MTFECalcRampSteps *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTBEPersistentParam::MTBEPersistentParam(MTBEPersistentParam *this)
{
  __asm { FMOV            V0.2S, #1.0 }

  *&this->var0 = _D0;
  *&this->var4 = 0;
  this->var6 = 0;
  *&this->var7 = 0;
  *&this->var9 = 0u;
  *&this->var11 = 0u;
  pthread_mutex_init(&this->var14, 0);
  pthread_cond_init(&this->var15, 0);
  this->var16 = 0;
  this->var13 = 0;
}

void MTBEPersistentParam::MTBEPersistentParam(MTBEPersistentParam *this, const MTBEPersistentParam *a2)
{
  MTBEPersistentParam::MTBEPersistentParam(this);
  v3 = *&a2->var2[2];
  *v4 = *&a2->var0;
  v4[1] = v3;
  v5 = *&a2->var5;
  v6 = *&a2->var7;
  v7 = *&a2->var12;
  v4[4] = *&a2->var10;
  v4[5] = v7;
  v4[2] = v5;
  v4[3] = v6;
}

{
  MTBEPersistentParam::MTBEPersistentParam(this);
  v3 = *&a2->var2[2];
  *v4 = *&a2->var0;
  v4[1] = v3;
  v5 = *&a2->var5;
  v6 = *&a2->var7;
  v7 = *&a2->var12;
  v4[4] = *&a2->var10;
  v4[5] = v7;
  v4[2] = v5;
  v4[3] = v6;
}

__n128 MTBEPersistentParam::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t MTBEParam::MTBEParam(uint64_t a1, int a2, __int16 *a3, unsigned int *a4)
{
  v7 = (MTBEDebugFlags::sMTXDebug >> 6) & 1 ^ a2;
  *(a1 + 1303) = ((MTBEDebugFlags::sMTXDebug & 0x40) != 0) ^ a2;
  if (v7)
  {
    if (kMTMBUsePostDurMod)
    {
      MTBEDebugParams::GetParam(kMTMBUsePostDurMod, &byte_27F8F0998, byte_27F8F0998);
      kMTMBUsePostDurMod = 0;
    }

    LOBYTE(v7) = byte_27F8F0998;
  }

  *(a1 + 1302) = v7 & 1;
  MTBEParam::SetVoice(a1, a3, a4);
  return a1;
}

uint64_t MTBEParam::SetVoice(uint64_t a1, __int16 *a2, unsigned int *a3)
{
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  *(a1 + 240) = 0;
  v6 = MTBEParam::HzToPitch(a1, *a2);
  *(a1 + 194) = v6;
  v7 = a2[46];
  *(a1 + 210) = v7;
  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    LOWORD(v8) = v6;
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v9 = 1;
    *(a1 + 50) = 1;
    *(a1 + 210) = 1;
  }

  v10 = a2[28];
  v11 = v10 < 32;
  v8 = (((v10 << 24) - 525926400) / 0xCuLL + 0x8000) >> 16;
  if (v11)
  {
    LOWORD(v8) = 0;
  }

  *(a1 + 194) = v8;
  *(a1 + 192) = v6 - v8;
  *(a1 + 224) = a3;
  if (a3)
  {
    v12 = *a3++;
    *(a1 + 216) = bswap32(v12);
    if (v9)
    {
      *(a1 + 240) = a3;
      a3 += bswap32(*a3) + 1;
    }
  }

  else
  {
    *(a1 + 216) = 0;
  }

  *(a1 + 232) = a3;
LABEL_12:
  if (a2[174] < 2)
  {
    v19 = a2[45];
    if (!v19)
    {
      v19 = 120;
    }

    *(a1 + 20) = v19;
  }

  else
  {
    *(a1 + 48) = 257;
    v13 = a2[45];
    if (v13 >= 240)
    {
      v14 = 240;
    }

    else
    {
      v14 = a2[45];
    }

    if (v14 <= 20)
    {
      LOWORD(v14) = 20;
    }

    *(a1 + 20) = v14;
    v15 = 60000 / (20 * v13);
    *(a1 + 248) = v15;
    v16 = v15 >> 1;
    v17 = (a1 + 252);
    v18 = -1;
    do
    {
      *(v17 - 1) = v15;
      *v17 = v15 + v16;
      v17 += 2;
      LOWORD(v16) = v15;
      v15 *= 2;
      v18 += 2;
    }

    while (v18 < 0xB);
    LOWORD(v8) = *(a1 + 194);
  }

  *(a1 + 190) = v8;
  *(a1 + 24) = a2[44] >> 1;
  v20 = 1374389535 * (a2[1] << 16);
  *(a1 + 200) = ((v20 >> 37) + (v20 >> 63));
  *(a1 + 208) = 256;
  v21 = 1374389535 * (a2[27] << 13);
  LODWORD(v21) = (52428 * ((v21 >> 37) + (v21 >> 63))) >> 16;
  *(a1 + 16) = v21;
  *(a1 + 18) = v21;
  MTBEParam::InitRateParams(a1);
  v22 = a2[38];
  *(a1 + 26) = v22 + 21;
  *(a1 + 28) = 21 - v22;
  result = MTBEParam::InvDFT(a1, a2);
  if (a2[46] - 1 <= 1)
  {
    v24 = a2[29];
    *a1 = v24;
    *(a1 + 8) = (v24 << 13) / 100;
  }

  if ((*(a1 + 48) & 1) != 0 || (*(a1 + 49) & 1) != 0 || *(a1 + 50) == 1)
  {
    *(a1 + 1303) = 0;
LABEL_30:
    *(a1 + 1302) = 0;
    goto LABEL_31;
  }

  if ((*(a1 + 1303) & 1) == 0)
  {
    goto LABEL_30;
  }

  if (*(a1 + 1302))
  {
    v26 = a2[3];
    v25 = 180;
    goto LABEL_32;
  }

LABEL_31:
  v25 = a2[3];
  v26 = v25;
LABEL_32:
  *(a1 + 1300) = v25;
  *(a1 + 1298) = v26;
  return result;
}

uint64_t MTBEParam::HzToPitch(MTBEParam *this, unsigned int a2)
{
  if (a2 >= 50)
  {
    if (a2 <= 0x11AC)
    {
      if (a2 > 0x63)
      {
        if (a2 > 0xC7)
        {
          if (a2 > 0x18F)
          {
            v5 = a2;
            v6 = a2 / 3200.0;
            if (a2 <= 0xC7F)
            {
              v7 = 1280;
            }

            else
            {
              v7 = 1536;
            }

            if (a2 <= 0xC7F)
            {
              v6 = a2 / 1600.0;
            }

            if (a2 <= 0x63F)
            {
              v7 = 1024;
              v6 = v5 / 800.0;
            }

            if (a2 <= 0x31F)
            {
              v3 = 768;
            }

            else
            {
              v3 = v7;
            }

            v4 = v5 / 400.0;
            if (a2 > 0x31F)
            {
              v4 = v6;
            }
          }

          else
          {
            v4 = a2 / 200.0;
            v3 = 512;
          }
        }

        else
        {
          v4 = a2 / 100.0;
          v3 = 256;
        }
      }

      else
      {
        v3 = 0;
        v4 = a2 / 50.0;
      }

      v8 = v4;
      v2 = v3 + ((logf(v8) * 369.33) + 0.5);
    }

    else
    {
      LOWORD(v2) = 1663;
    }
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t MTBEParam::MidiToPitch(MTBEParam *this, uint64_t a2)
{
  if (a2 >= 8025)
  {
    v2 = (((a2 << 16) - 525926400) / 12 + 0x8000) >> 16;
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

void *MTBEParam::InitSampleParams(void *this, unsigned int *a2, int a3)
{
  this[28] = a2;
  if (a2)
  {
    v3 = *a2++;
    this[27] = bswap32(v3);
    if (a3)
    {
      this[30] = a2;
      a2 += bswap32(*a2) + 1;
    }
  }

  else
  {
    this[27] = 0;
  }

  this[29] = a2;
  return this;
}

_WORD *MTBEParam::SetTempo(_WORD *this, int a2)
{
  if (a2 >= 240)
  {
    v2 = 240;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= 20)
  {
    LOWORD(v2) = 20;
  }

  this[10] = v2;
  v3 = 60000 / (20 * a2);
  this[124] = v3;
  v4 = v3 >> 1;
  v5 = this + 126;
  v6 = -1;
  do
  {
    *(v5 - 1) = v3;
    *v5 = v4 + v3;
    v5 += 2;
    LOWORD(v4) = v3;
    v3 *= 2;
    v6 += 2;
  }

  while (v6 < 0xB);
  return this;
}

float MTBEParam::InitRateParams(float32x2_t *this)
{
  v1 = 649;
  if (this[162].i8[6])
  {
    v1 = 650;
  }

  v2 = this->i16[v1];
  if (v2 <= 40)
  {
    LOWORD(v2) = 40;
  }

  if ((this[162].i8[6] & 1) == 0)
  {
    this[162].i16[1] = v2;
  }

  v3 = (v2 - 180) * 0.6;
  v4.f32[0] = v2;
  this[162].i16[2] = v2;
  v4.f32[1] = v3 + 180.0;
  v5 = vdiv_f32(vdup_n_s32(0x43340000u), v4);
  this[5] = v5;
  result = this[3].i16[0] * v5.f32[0];
  this[2].i16[3] = result;
  return result;
}

uint64_t MTBEParam::InitPitchParams(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 76);
  *(result + 26) = v2 + 21;
  *(result + 28) = 21 - v2;
  return result;
}

uint64_t MTBEParam::InvDFT(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1374389535 * (*(a2 + 10) << 15);
  *(result + 274) = 0u;
  *(result + 290) = 0u;
  *(result + 306) = 0u;
  *(result + 322) = 0u;
  v4 = ((v3 >> 63) + (SHIDWORD(v3) >> 5));
  *(result + 338) = 0u;
  *(result + 354) = 0u;
  *(result + 370) = 0u;
  *(result + 386) = 0u;
  *(result + 402) = 0u;
  *(result + 418) = 0u;
  *(result + 434) = 0u;
  *(result + 450) = 0u;
  *(result + 466) = 0u;
  *(result + 482) = 0u;
  *(result + 498) = 0u;
  *(result + 514) = 0u;
  *(result + 530) = 0u;
  *(result + 546) = 0u;
  *(result + 562) = 0u;
  *(result + 578) = 0u;
  *(result + 594) = 0u;
  *(result + 610) = 0u;
  *(result + 626) = 0u;
  *(result + 642) = 0u;
  *(result + 658) = 0u;
  *(result + 674) = 0u;
  *(result + 690) = 0u;
  *(result + 706) = 0u;
  *(result + 722) = 0u;
  *(result + 738) = 0u;
  *(result + 754) = 0u;
  *(result + 770) = 0u;
  v5 = result + 786;
  *result = v4;
  do
  {
    *(v5 + v2) = 0uLL;
    v2 += 16;
  }

  while (v2 != 512);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2 + 94;
  v10 = a2 + 190;
  do
  {
    v11 = 0;
    v12 = (*(v9 + 2 * v6) * v4) >> 16;
    v13 = (*(v10 + 2 * v6) * v4) >> 16;
    v14 = 256;
    v15 = result;
    do
    {
      v16 = MTBEParam::sSineWave15[v11];
      v17 = *(v15 + 274) + ((v16 * v12) >> 16);
      *(v15 + 274) = v17;
      v18 = *(v15 + 786) + ((v16 * v13) >> 16);
      *(v15 + 786) = v18;
      if (v17 >= 0)
      {
        v19 = v17;
      }

      else
      {
        v19 = -v17;
      }

      if (v7 <= v19)
      {
        v7 = v19;
      }

      if ((v18 & 0x8000u) == 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = -v18;
      }

      if (v8 <= v20)
      {
        v8 = v20;
      }

      v11 = (v11 + v6);
      v15 += 2;
      --v14;
    }

    while (v14);
    ++v6;
  }

  while (v6 != 48);
  if (v8)
  {
    v21 = 0;
    v22 = vdupq_n_s32((v7 << 16) / v8);
    do
    {
      *(v5 + v21) = vuzp2q_s16(vmulq_s32(v22, vmovl_s16(*(v5 + v21))), vmulq_s32(v22, vmovl_high_s16(*(v5 + v21))));
      v21 += 16;
    }

    while (v21 != 512);
  }

  return result;
}

uint64_t MTBEParam::StartNewPitchClause(uint64_t result)
{
  *(result + 184) = -1;
  *(result + 188) = 0;
  return result;
}

_WORD *MTBEParam::SetVolume(_WORD *this, uint64_t a2)
{
  v2 = 0x20000;
  if (a2 < 0x20000)
  {
    v2 = a2;
  }

  v3 = (v2 & ~(v2 >> 63)) >> 8;
  this[104] = v3;
  this[8] = (v3 * this[9]) >> 8;
  return this;
}

uint64_t MTBEParam::SetModulation(uint64_t this, uint64_t a2)
{
  v2 = 13107200;
  if (a2 < 13107200)
  {
    v2 = a2;
  }

  *(this + 200) = (42949673 * (v2 & ~(v2 >> 63))) >> 32;
  return this;
}

uint64_t MTBEParam::SetPitch(uint64_t this, int a2)
{
  if (a2 >= 1000)
  {
    v2 = 1000;
  }

  else
  {
    v2 = a2;
  }

  v3 = v2 & ~(v2 >> 31);
  *(this + 194) = v3;
  *(this + 190) = v3;
  return this;
}

uint64_t MTBEParam::ResetPitchParams(uint64_t a1, __int16 *a2)
{
  result = MTBEParam::HzToPitch(a1, *a2);
  *(a1 + 194) = result;
  *(a1 + 190) = result;
  v5 = 1374389535 * (a2[1] << 16);
  *(a1 + 200) = ((v5 >> 37) + (v5 >> 63));
  return result;
}

float MTBEParam::GetPitchFloorRange(MTBEParam *this, float *a2, float *a3)
{
  v5 = vcvts_n_f32_s64(*(this + 25), 0x10uLL);
  v6 = (3276800 << HIBYTE(*(this + 95)) >> 16);
  v7 = (v6 * exp2(vcvtd_n_f64_u32(*(this + 95), 8uLL)) + 0.5);
  v8 = pow(1.05946309, v5 * 3.60870374) * v7;
  result = pow(1.05946309, v5 * -3.60870374) * v7;
  *a3 = v8 - result;
  *a2 = result;
  return result;
}

float MTBEParam::SetRate(float32x2_t *this, int a2)
{
  if (a2 <= 40)
  {
    v2 = 40;
  }

  else
  {
    v2 = a2;
  }

  if (this[162].i8[6])
  {
    v3 = 180;
  }

  else
  {
    v3 = v2;
  }

  this[162].i16[2] = v3;
  this[162].i16[1] = v2;
  return MTBEParam::InitRateParams(this);
}

uint64_t MTBEParam::ResetRateParams(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 6);
  if (*(result + 1302))
  {
    v3 = 180;
  }

  else
  {
    v3 = *(a2 + 6);
  }

  *(result + 1300) = v3;
  *(result + 1298) = v2;
  if (*(result + 48) == 1)
  {
    v4 = *(a2 + 90);
    if (v4 >= 240)
    {
      v5 = 240;
    }

    else
    {
      v5 = *(a2 + 90);
    }

    if (v5 <= 20)
    {
      LOWORD(v5) = 20;
    }

    *(result + 20) = v5;
    v6 = 60000 / (20 * v4);
    *(result + 248) = v6;
    v7 = v6 >> 1;
    v8 = (result + 252);
    v9 = -1;
    do
    {
      *(v8 - 1) = v6;
      *v8 = v6 + v7;
      v8 += 2;
      LOWORD(v7) = v6;
      v6 *= 2;
      v9 += 2;
    }

    while (v9 < 0xB);
  }

  return result;
}

float MTBEParam::SetUsePostDurMod(float32x2_t *this, int a2)
{
  this[162].i8[6] = a2;
  v2 = this[162].i16[1];
  if (v2 <= 40)
  {
    LOWORD(v2) = 40;
  }

  if (a2)
  {
    v3 = 180;
  }

  else
  {
    v3 = v2;
  }

  this[162].i16[2] = v3;
  this[162].i16[1] = v2;
  return MTBEParam::InitRateParams(this);
}