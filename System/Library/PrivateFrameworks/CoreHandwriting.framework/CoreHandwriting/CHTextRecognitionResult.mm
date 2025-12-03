@interface CHTextRecognitionResult
- (CHTextRecognitionResult)initWithString:(id)string score:(double)score wordRanges:(id)ranges wordIDs:(id)ds wordRecognitionScores:(id)scores wordCombinedScores:(id)combinedScores wordStrokeSets:(id)sets wordLexicalEntries:(id)self0 wordPatternEntries:(id)self1 rareWordIndexes:(id)self2 inappropriateWordIndexes:(id)self3 isTextReplacement:(BOOL)self4;
- (id)mecabraCandidate;
@end

@implementation CHTextRecognitionResult

- (CHTextRecognitionResult)initWithString:(id)string score:(double)score wordRanges:(id)ranges wordIDs:(id)ds wordRecognitionScores:(id)scores wordCombinedScores:(id)combinedScores wordStrokeSets:(id)sets wordLexicalEntries:(id)self0 wordPatternEntries:(id)self1 rareWordIndexes:(id)self2 inappropriateWordIndexes:(id)self3 isTextReplacement:(BOOL)self4
{
  stringCopy = string;
  rangesCopy = ranges;
  dsCopy = ds;
  dsCopy2 = ds;
  scoresCopy = scores;
  combinedScoresCopy = combinedScores;
  setsCopy = sets;
  entriesCopy = entries;
  patternEntriesCopy = patternEntries;
  indexesCopy = indexes;
  wordIndexesCopy = wordIndexes;
  v45.receiver = self;
  v45.super_class = CHTextRecognitionResult;
  v24 = [(CHRecognitionResult *)&v45 initWithScore:score];
  p_isa = &v24->super.super.isa;
  v31 = v24;
  if (v24)
  {
    string = v24->_string;
    if (string != stringCopy)
    {
      v24->_string = 0;
    }

    v33 = objc_msgSend_copy(stringCopy, v25, v26, v27, v28, v29, ranges);
    v34 = v31->_string;
    v31->_string = v33;

    objc_storeStrong(p_isa + 4, obj);
    objc_storeStrong(p_isa + 5, dsCopy);
    objc_storeStrong(p_isa + 6, scores);
    objc_storeStrong(p_isa + 7, combinedScores);
    objc_storeStrong(p_isa + 8, sets);
    objc_storeStrong(p_isa + 9, entries);
    objc_storeStrong(p_isa + 10, patternEntries);
    objc_storeStrong(p_isa + 11, indexes);
    objc_storeStrong(p_isa + 12, wordIndexes);
    v31->_isTextReplacement = replacement;
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