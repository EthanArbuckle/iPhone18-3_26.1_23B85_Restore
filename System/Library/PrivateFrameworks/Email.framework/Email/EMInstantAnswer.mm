@interface EMInstantAnswer
- (EMInstantAnswer)initWithCSInstantAnswers:(id)answers message:(id)message;
- (EMInstantAnswer)initWithCoder:(id)coder;
- (id)initFakeWithMessage:(id)message;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMInstantAnswer

- (id)initFakeWithMessage:(id)message
{
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = EMInstantAnswer;
  v6 = [(EMInstantAnswer *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
    initWithFakeData = [[EMInstantAnswerFlight alloc] initWithFakeData];
    flight = v7->_flight;
    v7->_flight = initWithFakeData;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    bodyCardSectionID = v7->_bodyCardSectionID;
    v7->_bodyCardSectionID = uUIDString;

    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    buttonsCardSectionID = v7->_buttonsCardSectionID;
    v7->_buttonsCardSectionID = uUIDString2;
  }

  return v7;
}

- (EMInstantAnswer)initWithCSInstantAnswers:(id)answers message:(id)message
{
  answersCopy = answers;
  messageCopy = message;
  v20.receiver = self;
  v20.super_class = EMInstantAnswer;
  v8 = [(EMInstantAnswer *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, message);
    if ([answersCopy instantAnswersKind])
    {
      if ([answersCopy instantAnswersKind] != 1)
      {
LABEL_7:
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        bodyCardSectionID = v9->_bodyCardSectionID;
        v9->_bodyCardSectionID = uUIDString;

        uUID2 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString2 = [uUID2 UUIDString];
        buttonsCardSectionID = v9->_buttonsCardSectionID;
        v9->_buttonsCardSectionID = uUIDString2;

        goto LABEL_8;
      }

      v10 = [[EMInstantAnswerHotel alloc] initWithCSInstantAnswers:answersCopy];
      v11 = 24;
    }

    else
    {
      v10 = [[EMInstantAnswerFlight alloc] initWithCSInstantAnswers:answersCopy];
      v11 = 16;
    }

    v12 = *(&v9->super.isa + v11);
    *(&v9->super.isa + v11) = v10;

    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (EMInstantAnswer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = EMInstantAnswer;
  v5 = [(EMInstantAnswer *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flight"];
    flight = v5->_flight;
    v5->_flight = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hotel"];
    hotel = v5->_hotel;
    v5->_hotel = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_bodyCardSectionID"];
    bodyCardSectionID = v5->_bodyCardSectionID;
    v5->_bodyCardSectionID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_buttonsCardSectionID"];
    buttonsCardSectionID = v5->_buttonsCardSectionID;
    v5->_buttonsCardSectionID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  message = [(EMInstantAnswer *)self message];
  [coderCopy encodeObject:message forKey:@"EFPropertyKey_message"];

  flight = [(EMInstantAnswer *)self flight];
  [coderCopy encodeObject:flight forKey:@"EFPropertyKey_flight"];

  hotel = [(EMInstantAnswer *)self hotel];
  [coderCopy encodeObject:hotel forKey:@"EFPropertyKey_hotel"];

  bodyCardSectionID = [(EMInstantAnswer *)self bodyCardSectionID];
  [coderCopy encodeObject:bodyCardSectionID forKey:@"EFPropertyKey_bodyCardSectionID"];

  buttonsCardSectionID = [(EMInstantAnswer *)self buttonsCardSectionID];
  [coderCopy encodeObject:buttonsCardSectionID forKey:@"EFPropertyKey_buttonsCardSectionID"];
}

@end