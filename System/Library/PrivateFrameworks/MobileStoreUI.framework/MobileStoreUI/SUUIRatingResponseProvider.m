@interface SUUIRatingResponseProvider
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
@end

@implementation SUUIRatingResponseProvider

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [(ISDataProvider *)self contentType];
  v8 = v7;
  if (v7 && [v7 rangeOfString:@"text/html" options:1] != 0x7FFFFFFFFFFFFFFFLL && (v9 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", v6, 4), v10 = objc_msgSend(v9, "isEqualToString:", @"success"), v9, (v10 & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIRatingResponseProvider;
    v11 = [(ISProtocolDataProvider *)&v13 parseData:v6 returningError:a4];
  }

  return v11;
}

@end