@interface CHSpellCheckerErrorModel
- (double)replacementErrorScoreForIntendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter;
@end

@implementation CHSpellCheckerErrorModel

- (double)replacementErrorScoreForIntendedCharacter:(unsigned __int16)character actualCharacter:(unsigned __int16)actualCharacter
{
  actualCharacterCopy = actualCharacter;
  v8 = sub_18380BB8C(self, character, character, actualCharacter, v4, v5);
  v13 = sub_18380BB8C(self, actualCharacterCopy, v9, v10, v11, v12);
  v19 = objc_msgSend_count(&unk_1EF1EBB80, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_count(&unk_1EF1EBB80, v20, v21, v22, v23, v24);
  v26 = 0.0;
  if (v8 < v19 && v13 < v25)
  {
    v26 = qword_1839D09A0[65 * v8 + v13];
  }

  return v26 / -1000.0;
}

@end