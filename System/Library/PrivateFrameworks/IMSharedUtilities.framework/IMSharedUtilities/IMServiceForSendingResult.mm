@interface IMServiceForSendingResult
- (IMServiceForSendingResult)initWithCoder:(id)coder;
- (id)description;
- (id)initAsFinalResult:(BOOL)result bestResult:(id)bestResult resultsByAccountID:(id)d;
- (id)resultsForServiceName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMServiceForSendingResult

- (id)initAsFinalResult:(BOOL)result bestResult:(id)bestResult resultsByAccountID:(id)d
{
  bestResultCopy = bestResult;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = IMServiceForSendingResult;
  v11 = [(IMServiceForSendingResult *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_final = result;
    objc_storeStrong(&v11->_bestResult, bestResult);
    objc_storeStrong(p_isa + 3, d);
  }

  return p_isa;
}

- (IMServiceForSendingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IMServiceForSendingResult;
  v5 = [(IMServiceForSendingResult *)&v13 init];
  if (v5)
  {
    v5->_final = [coderCopy decodeBoolForKey:@"final"];
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"resultsByAccountID"];
    resultsByAccountID = v5->_resultsByAccountID;
    v5->_resultsByAccountID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bestResult"];
    if (v9)
    {
      v10 = [(NSDictionary *)v5->_resultsByAccountID objectForKeyedSubscript:v9];
      bestResult = v5->_bestResult;
      v5->_bestResult = v10;
    }
  }

  return v5;
}

- (id)resultsForServiceName:(id)name
{
  nameCopy = name;
  resultsByAccountID = [(IMServiceForSendingResult *)self resultsByAccountID];
  allValues = [resultsByAccountID allValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A863E80C;
  v10[3] = &unk_1E7826E28;
  v11 = nameCopy;
  v7 = nameCopy;
  v8 = [allValues __imArrayByFilteringWithBlock:v10];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_final forKey:@"final"];
  [coderCopy encodeObject:self->_resultsByAccountID forKey:@"resultsByAccountID"];
  if (self->_bestResult)
  {
    v4 = [(NSDictionary *)self->_resultsByAccountID allKeysForObject:?];
    firstObject = [v4 firstObject];

    if (firstObject)
    {
      [coderCopy encodeObject:firstObject forKey:@"bestResult"];
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

  bestResult = [(IMServiceForSendingResult *)self bestResult];
  resultsByAccountID = [(IMServiceForSendingResult *)self resultsByAccountID];
  v8 = [v3 stringWithFormat:@"<%@ %p [isFinal: %@ bestResult: %@ resultsByAccountID: %@]>", v4, self, v5, bestResult, resultsByAccountID];

  return v8;
}

@end