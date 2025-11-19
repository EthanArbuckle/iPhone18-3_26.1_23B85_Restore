@interface EARSpeechRecognition
@end

@implementation EARSpeechRecognition

void __73___EARSpeechRecognition_splitRecognitionWithPotentialCommandRecognition___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73___EARSpeechRecognition_splitRecognitionWithPotentialCommandRecognition___block_invoke_2;
  v7[3] = &unk_1E7C1A370;
  v11 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v10 = a3;
  v8 = v6;
  v9 = &v12;
  [v5 enumerateObjectsUsingBlock:v7];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v13[5]];

  _Block_object_dispose(&v12, 8);
}

void __73___EARSpeechRecognition_splitRecognitionWithPotentialCommandRecognition___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __73___EARSpeechRecognition_splitRecognitionWithPotentialCommandRecognition___block_invoke_3;
  v10 = &unk_1E7C1A348;
  v16 = *(a1 + 64);
  v4 = *(a1 + 32);
  v14 = &v17;
  v11 = v4;
  v5 = v3;
  v6 = *(a1 + 56);
  v12 = v5;
  v15 = v6;
  v13 = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:&v7];
  [*(*(*(a1 + 48) + 8) + 40) addObject:{v18[5], v7, v8, v9, v10, v11}];

  _Block_object_dispose(&v17, 8);
}

void __73___EARSpeechRecognition_splitRecognitionWithPotentialCommandRecognition___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 72) == 1)
  {
    if (([v5 appendedAutoPunctuation] & 1) == 0 && (objc_msgSend(v6, "prependedAutoPunctuation") & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *(a1 + 64);
    if (v9 != [*(a1 + 48) count] - 1)
    {
      v12 = *(*(*(a1 + 56) + 8) + 40);
      v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v13 = [v8 copy];
      [v12 addObject:v13];

      goto LABEL_12;
    }

    if (![*(*(a1 + 32) + 32) count] || (objc_msgSend(v6, "appendedAutoPunctuation") & 1) == 0 && !objc_msgSend(v6, "prependedAutoPunctuation") || (v10 = *(*(a1 + 32) + 32), objc_msgSend(v6, "tokenName"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = objc_msgSend(v10, "containsObject:", v11), v11, (v10 & 1) != 0))
    {
LABEL_4:
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = [*(a1 + 32) adjustSpaceForTokens:*(a1 + 40) currTokenIndex:a3 endsOfSentencePunctuations:*(*(a1 + 32) + 32) isPotentialCommandRecognition:*(a1 + 72)];
      [v7 addObject:v8];
LABEL_12:

      goto LABEL_13;
    }

    if (quasar::gLogLevel >= 5)
    {
      memset(v19, 0, sizeof(v19));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Deleting punctuation: ", 22);
      v15 = [v6 tokenName];
      v16 = [v15 UTF8String];
      v17 = strlen(v16);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " from potentialPrecedingRecognition", 35);

      quasar::QuasarDebugMessage::~QuasarDebugMessage(v19);
    }
  }

LABEL_13:
}

@end