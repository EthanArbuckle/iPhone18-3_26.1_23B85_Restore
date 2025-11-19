@interface IAStringDetails
+ (id)getDetailsForString:(id)a3;
+ (id)sharedPunctuationCharacterSet;
+ (unint64_t)emojiCountForText:(id)a3;
+ (unint64_t)normalizedTextLength:(id)a3;
+ (unint64_t)punctuationCountForText:(id)a3;
@end

@implementation IAStringDetails

+ (id)sharedPunctuationCharacterSet
{
  if (qword_1ED82C528 != -1)
  {
    sub_1D462DCC4();
  }

  v3 = qword_1ED82C520;

  return v3;
}

+ (unint64_t)emojiCountForText:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5) <= 0x2710)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    if (objc_msgSend_length(v3, v6, v7) && objc_msgSend__containsEmoji(v3, v9, v10))
    {
      v13 = objc_msgSend_length(v3, v11, v12);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1D461D924;
      v16[3] = &unk_1E848A6C8;
      v16[4] = &v17;
      objc_msgSend__enumerateEmojiTokensInRange_block_(v3, v14, 0, v13, v16);
    }

    v8 = v18[3];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)normalizedTextLength:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5) < 0x2711)
  {
    v9 = objc_opt_class();
    v11 = objc_msgSend_emojiCountForText_(v9, v10, v3);
    v12 = CEMCreateStringByStrippingEmojiCharacters();
    v8 = v11 + (objc_msgSend_lengthOfBytesUsingEncoding_(v12, v13, 2348810496) >> 2);
  }

  else
  {
    v8 = objc_msgSend_length(v3, v6, v7);
  }

  return v8;
}

+ (unint64_t)punctuationCountForText:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5) <= 0x2710 && objc_msgSend_length(v3, v6, v7))
  {
    v10 = objc_msgSend_length(v3, v8, v9);
    v12 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v11, v3);
    v13 = objc_opt_class();
    v16 = objc_msgSend_sharedPunctuationCharacterSet(v13, v14, v15);
    objc_msgSend__removeCharactersFromSet_(v12, v17, v16);
    v20 = v10 - objc_msgSend_length(v12, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)getDetailsForString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IAStringDetails);
  if (objc_msgSend_length(v3, v5, v6) >= 0x2711)
  {
    objc_msgSend_setTextIsTooLong_(v4, v7, 1);
  }

  v8 = objc_msgSend_normalizedTextLength_(IAStringDetails, v7, v3);
  objc_msgSend_setCharacters_(v4, v9, v8);
  v11 = objc_msgSend_emojiCountForText_(IAStringDetails, v10, v3);
  objc_msgSend_setEmojiCharacters_(v4, v12, v11);
  v14 = objc_msgSend_punctuationCountForText_(IAStringDetails, v13, v3);
  objc_msgSend_setPunctuationCharacters_(v4, v15, v14);

  return v4;
}

@end