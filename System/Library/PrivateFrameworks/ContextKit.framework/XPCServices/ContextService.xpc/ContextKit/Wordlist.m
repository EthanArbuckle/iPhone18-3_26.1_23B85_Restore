@interface Wordlist
- (Wordlist)initWithPathToStopwords:(id)a3 pathToAuxiliary:(id)a4;
@end

@implementation Wordlist

- (Wordlist)initWithPathToStopwords:(id)a3 pathToAuxiliary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = Wordlist;
  v8 = [(Wordlist *)&v13 init];
  if (!v8 || (v11 = objc_opt_new(), words = v8->_words, v8->_words = v11, words, sub_1002BD610(v8, v7, &off_1004A9F68), sub_1002BD610(v8, v6, &off_1004A9F80), [(NSMutableDictionary *)v8->_words count]))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end