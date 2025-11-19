@interface CHTextRecognitionResult
- (CHTextRecognitionResult)initWithString:(id)a3 score:(double)a4 wordRanges:(id)a5 wordIDs:(id)a6 wordRecognitionScores:(id)a7 wordCombinedScores:(id)a8 wordStrokeSets:(id)a9 wordLexicalEntries:(id)a10 wordPatternEntries:(id)a11 rareWordIndexes:(id)a12 inappropriateWordIndexes:(id)a13 isTextReplacement:(BOOL)a14;
- (id)mecabraCandidate;
@end

@implementation CHTextRecognitionResult

- (CHTextRecognitionResult)initWithString:(id)a3 score:(double)a4 wordRanges:(id)a5 wordIDs:(id)a6 wordRecognitionScores:(id)a7 wordCombinedScores:(id)a8 wordStrokeSets:(id)a9 wordLexicalEntries:(id)a10 wordPatternEntries:(id)a11 rareWordIndexes:(id)a12 inappropriateWordIndexes:(id)a13 isTextReplacement:(BOOL)a14
{
  v44 = a3;
  v43 = a5;
  v37 = a6;
  v42 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v45.receiver = self;
  v45.super_class = CHTextRecognitionResult;
  v24 = [(CHRecognitionResult *)&v45 initWithScore:a4];
  p_isa = &v24->super.super.isa;
  v31 = v24;
  if (v24)
  {
    string = v24->_string;
    if (string != v44)
    {
      v24->_string = 0;
    }

    v33 = objc_msgSend_copy(v44, v25, v26, v27, v28, v29, a5);
    v34 = v31->_string;
    v31->_string = v33;

    objc_storeStrong(p_isa + 4, obj);
    objc_storeStrong(p_isa + 5, v37);
    objc_storeStrong(p_isa + 6, a7);
    objc_storeStrong(p_isa + 7, a8);
    objc_storeStrong(p_isa + 8, a9);
    objc_storeStrong(p_isa + 9, a10);
    objc_storeStrong(p_isa + 10, a11);
    objc_storeStrong(p_isa + 11, a12);
    objc_storeStrong(p_isa + 12, a13);
    v31->_isTextReplacement = a14;
  }

  return v31;
}

- (id)mecabraCandidate
{
  v7 = objc_msgSend_wordIDs(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_count(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    v19 = objc_msgSend_wordRanges(self, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_count(v19, v20, v21, v22, v23, v24);

    if (v13 == v25)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      sub_1836D58DC();
    }
  }

  return 0;
}

@end