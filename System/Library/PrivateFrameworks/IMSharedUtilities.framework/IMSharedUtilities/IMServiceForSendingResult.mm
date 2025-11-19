@interface IMServiceForSendingResult
- (IMServiceForSendingResult)initWithCoder:(id)a3;
- (id)description;
- (id)initAsFinalResult:(BOOL)a3 bestResult:(id)a4 resultsByAccountID:(id)a5;
- (id)resultsForServiceName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMServiceForSendingResult

- (id)initAsFinalResult:(BOOL)a3 bestResult:(id)a4 resultsByAccountID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IMServiceForSendingResult;
  v11 = [(IMServiceForSendingResult *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_final = a3;
    objc_storeStrong(&v11->_bestResult, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (IMServiceForSendingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IMServiceForSendingResult;
  v5 = [(IMServiceForSendingResult *)&v13 init];
  if (v5)
  {
    v5->_final = [v4 decodeBoolForKey:@"final"];
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"resultsByAccountID"];
    resultsByAccountID = v5->_resultsByAccountID;
    v5->_resultsByAccountID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bestResult"];
    if (v9)
    {
      v10 = [(NSDictionary *)v5->_resultsByAccountID objectForKeyedSubscript:v9];
      bestResult = v5->_bestResult;
      v5->_bestResult = v10;
    }
  }

  return v5;
}

- (id)resultsForServiceName:(id)a3
{
  v4 = a3;
  v5 = [(IMServiceForSendingResult *)self resultsByAccountID];
  v6 = [v5 allValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A863E80C;
  v10[3] = &unk_1E7826E28;
  v11 = v4;
  v7 = v4;
  v8 = [v6 __imArrayByFilteringWithBlock:v10];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:self->_final forKey:@"final"];
  [v6 encodeObject:self->_resultsByAccountID forKey:@"resultsByAccountID"];
  if (self->_bestResult)
  {
    v4 = [(NSDictionary *)self->_resultsByAccountID allKeysForObject:?];
    v5 = [v4 firstObject];

    if (v5)
    {
      [v6 encodeObject:v5 forKey:@"bestResult"];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(IMServiceForSendingResult *)self isFinal])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(IMServiceForSendingResult *)self bestResult];
  v7 = [(IMServiceForSendingResult *)self resultsByAccountID];
  v8 = [v3 stringWithFormat:@"<%@ %p [isFinal: %@ bestResult: %@ resultsByAccountID: %@]>", v4, self, v5, v6, v7];

  return v8;
}

@end