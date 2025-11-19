@interface CHStringOVSChecker
- (BOOL)isInappropriateString:(id)a3;
- (BOOL)isInappropriateTokenID:(unsigned int)a3;
- (CHStringOVSChecker)initWithTrie:(_CFBurstTrie *)a3 staticLexicon:(_LXLexicon *)a4 customLexicon:(_LXLexicon *)a5 flags:(unsigned int)a6 stringNormalizationFunction:(void *)a7;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation CHStringOVSChecker

- (CHStringOVSChecker)initWithTrie:(_CFBurstTrie *)a3 staticLexicon:(_LXLexicon *)a4 customLexicon:(_LXLexicon *)a5 flags:(unsigned int)a6 stringNormalizationFunction:(void *)a7
{
  v16.receiver = self;
  v16.super_class = CHStringOVSChecker;
  v12 = [(CHStringOVSChecker *)&v16 init];
  if (v12)
  {
    if (a3)
    {
      v12->_ovsTrie = CFBurstTrieRetain();
    }

    if (a4)
    {
      CFRetain(a4);
      mCFObject = v12->_staticLexicon.mCFObject;
      v12->_staticLexicon.mCFObject = a4;
      if (mCFObject)
      {
        CFRelease(mCFObject);
      }
    }

    if (a5)
    {
      CFRetain(a5);
      v14 = v12->_customLexicon.mCFObject;
      v12->_customLexicon.mCFObject = a5;
      if (v14)
      {
        CFRelease(v14);
      }
    }

    v12->_flagsFilter = a6;
    v12->_stringNormalizationFunction = a7;
  }

  return v12;
}

- (BOOL)isInappropriateString:(id)a3
{
  v4 = a3;
  if (self->_staticLexicon.mCFObject)
  {
    v5 = sub_1838DAB50(self, v4);
    mCFObject = self->_customLexicon.mCFObject;
    v7 = (mCFObject != 0) | v5;
    if (!mCFObject)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    v8 = self->_customLexicon.mCFObject;
    v7 = v8 != 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if ((v5 & 1) == 0)
  {
    v7 = sub_1838DAB50(self, v4);
  }

LABEL_7:
  ovsTrie = self->_ovsTrie;
  v10 = (ovsTrie != 0) | v7;
  if (ovsTrie && (v7 & 1) == 0)
  {
    v11 = v4;
    v16 = v11;
    if (v11 && (objc_msgSend_isEqualToString_(v11, v12, &stru_1EF1C0318, v13, v14, v15) & 1) == 0)
    {
      v22 = objc_msgSend_lowercaseString(v16, v17, v18, v19, v20, v21);
      objc_opt_self();
      v28 = objc_alloc_init(MEMORY[0x1E696AD60]);
      for (i = 0; objc_msgSend_length(v22, v23, v24, v25, v26, v27) > i; ++i)
      {
        v34 = objc_msgSend_characterAtIndex_(v22, v30, i, v31, v32, v33);
        v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"%C", v36, v37, v38, ((v34 >> 1) | (v34 << 15)));
        objc_msgSend_appendString_(v28, v40, v39, v41, v42, v43);
      }

      objc_msgSend_length(v16, v44, v45, v46, v47, v48);
      v10 = CFBurstTrieContains() != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

- (BOOL)isInappropriateTokenID:(unsigned int)a3
{
  v4 = LXLexiconCopyEntryForTokenID();
  if (v4)
  {
    v9 = v4;
    isInappropriateLexiconEntry = objc_msgSend_isInappropriateLexiconEntry_(self, v5, v4, v6, v7, v8);
    CFRelease(v9);
    if (isInappropriateLexiconEntry)
    {
      return 1;
    }
  }

  v13 = LXLexiconCopyEntryForTokenID();
  if (v13)
  {
    v18 = v13;
    v11 = objc_msgSend_isInappropriateLexiconEntry_(self, v14, v13, v15, v16, v17);
    CFRelease(v18);
    return v11;
  }

  return 0;
}

- (void)dealloc
{
  if (self->_ovsTrie)
  {
    CFBurstTrieRelease();
    self->_ovsTrie = 0;
  }

  v3.receiver = self;
  v3.super_class = CHStringOVSChecker;
  [(CHStringOVSChecker *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end