@interface LiveSpeechServicesObjc
+ (id)favoritePhrases;
+ (id)liveSpeechPhrases;
+ (id)observeFavoriteLiveSpeechPhrasesChanges:(id)a3;
+ (id)observeFavoritePhrasesChanges:(id)a3;
+ (id)phraseInputIDKey;
+ (id)phraseShortcutKey;
+ (id)phraseTextKey;
+ (void)addFavoritePhrase:(id)a3;
+ (void)removeFavoritePhrase:(id)a3;
+ (void)startLiveSpeechAndReturnError:(id *)a3;
+ (void)stopLiveSpeechAndReturnError:(id *)a3;
@end

@implementation LiveSpeechServicesObjc

+ (void)startLiveSpeechAndReturnError:(id *)a3
{
  v4 = +[LiveSpeechServices shared];
  [v4 startLiveSpeechAndReturnError:a3];
}

+ (void)stopLiveSpeechAndReturnError:(id *)a3
{
  v4 = +[LiveSpeechServices shared];
  [v4 stopLiveSpeechAndReturnError:a3];
}

+ (id)liveSpeechPhrases
{
  v2 = +[LiveSpeechServices shared];
  v3 = [v2 liveSpeechPhrases];

  return v3;
}

+ (id)observeFavoriteLiveSpeechPhrasesChanges:(id)a3
{
  v3 = a3;
  v4 = +[LiveSpeechServices shared];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__LiveSpeechServicesObjc_observeFavoriteLiveSpeechPhrasesChanges___block_invoke;
  v8[3] = &unk_27981C100;
  v9 = v3;
  v5 = v3;
  v6 = [v4 observeFavoriteLiveSpeechPhrasesChanges:v8];

  return v6;
}

+ (id)favoritePhrases
{
  v2 = +[LiveSpeechServices shared];
  v3 = [v2 favoritePhrases];

  return v3;
}

+ (void)addFavoritePhrase:(id)a3
{
  v3 = a3;
  v4 = +[LiveSpeechServices shared];
  [v4 addFavoritePhrase:v3];
}

+ (void)removeFavoritePhrase:(id)a3
{
  v3 = a3;
  v4 = +[LiveSpeechServices shared];
  [v4 removeFavoritePhrase:v3];
}

+ (id)phraseTextKey
{
  v2 = +[LiveSpeechServices shared];
  v3 = [v2 phraseTextKey];

  return v3;
}

+ (id)phraseInputIDKey
{
  v2 = +[LiveSpeechServices shared];
  v3 = [v2 phraseInputIDKey];

  return v3;
}

+ (id)phraseShortcutKey
{
  v2 = +[LiveSpeechServices shared];
  v3 = [v2 phraseShortcutKey];

  return v3;
}

+ (id)observeFavoritePhrasesChanges:(id)a3
{
  v3 = a3;
  v4 = +[LiveSpeechServices shared];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__LiveSpeechServicesObjc_observeFavoritePhrasesChanges___block_invoke;
  v8[3] = &unk_27981C100;
  v9 = v3;
  v5 = v3;
  v6 = [v4 observeFavoritePhrasesChanges:v8];

  return v6;
}

@end