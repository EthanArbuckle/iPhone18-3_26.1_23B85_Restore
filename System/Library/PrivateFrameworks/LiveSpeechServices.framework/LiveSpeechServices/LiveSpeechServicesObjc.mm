@interface LiveSpeechServicesObjc
+ (id)favoritePhrases;
+ (id)liveSpeechPhrases;
+ (id)observeFavoriteLiveSpeechPhrasesChanges:(id)changes;
+ (id)observeFavoritePhrasesChanges:(id)changes;
+ (id)phraseInputIDKey;
+ (id)phraseShortcutKey;
+ (id)phraseTextKey;
+ (void)addFavoritePhrase:(id)phrase;
+ (void)removeFavoritePhrase:(id)phrase;
+ (void)startLiveSpeechAndReturnError:(id *)error;
+ (void)stopLiveSpeechAndReturnError:(id *)error;
@end

@implementation LiveSpeechServicesObjc

+ (void)startLiveSpeechAndReturnError:(id *)error
{
  v4 = +[LiveSpeechServices shared];
  [v4 startLiveSpeechAndReturnError:error];
}

+ (void)stopLiveSpeechAndReturnError:(id *)error
{
  v4 = +[LiveSpeechServices shared];
  [v4 stopLiveSpeechAndReturnError:error];
}

+ (id)liveSpeechPhrases
{
  v2 = +[LiveSpeechServices shared];
  liveSpeechPhrases = [v2 liveSpeechPhrases];

  return liveSpeechPhrases;
}

+ (id)observeFavoriteLiveSpeechPhrasesChanges:(id)changes
{
  changesCopy = changes;
  v4 = +[LiveSpeechServices shared];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__LiveSpeechServicesObjc_observeFavoriteLiveSpeechPhrasesChanges___block_invoke;
  v8[3] = &unk_27981C100;
  v9 = changesCopy;
  v5 = changesCopy;
  v6 = [v4 observeFavoriteLiveSpeechPhrasesChanges:v8];

  return v6;
}

+ (id)favoritePhrases
{
  v2 = +[LiveSpeechServices shared];
  favoritePhrases = [v2 favoritePhrases];

  return favoritePhrases;
}

+ (void)addFavoritePhrase:(id)phrase
{
  phraseCopy = phrase;
  v4 = +[LiveSpeechServices shared];
  [v4 addFavoritePhrase:phraseCopy];
}

+ (void)removeFavoritePhrase:(id)phrase
{
  phraseCopy = phrase;
  v4 = +[LiveSpeechServices shared];
  [v4 removeFavoritePhrase:phraseCopy];
}

+ (id)phraseTextKey
{
  v2 = +[LiveSpeechServices shared];
  phraseTextKey = [v2 phraseTextKey];

  return phraseTextKey;
}

+ (id)phraseInputIDKey
{
  v2 = +[LiveSpeechServices shared];
  phraseInputIDKey = [v2 phraseInputIDKey];

  return phraseInputIDKey;
}

+ (id)phraseShortcutKey
{
  v2 = +[LiveSpeechServices shared];
  phraseShortcutKey = [v2 phraseShortcutKey];

  return phraseShortcutKey;
}

+ (id)observeFavoritePhrasesChanges:(id)changes
{
  changesCopy = changes;
  v4 = +[LiveSpeechServices shared];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__LiveSpeechServicesObjc_observeFavoritePhrasesChanges___block_invoke;
  v8[3] = &unk_27981C100;
  v9 = changesCopy;
  v5 = changesCopy;
  v6 = [v4 observeFavoritePhrasesChanges:v8];

  return v6;
}

@end