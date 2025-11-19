@interface EMInstantAnswer
- (EMInstantAnswer)initWithCSInstantAnswers:(id)a3 message:(id)a4;
- (EMInstantAnswer)initWithCoder:(id)a3;
- (id)initFakeWithMessage:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMInstantAnswer

- (id)initFakeWithMessage:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = EMInstantAnswer;
  v6 = [(EMInstantAnswer *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
    v8 = [[EMInstantAnswerFlight alloc] initWithFakeData];
    flight = v7->_flight;
    v7->_flight = v8;

    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    bodyCardSectionID = v7->_bodyCardSectionID;
    v7->_bodyCardSectionID = v11;

    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    buttonsCardSectionID = v7->_buttonsCardSectionID;
    v7->_buttonsCardSectionID = v14;
  }

  return v7;
}

- (EMInstantAnswer)initWithCSInstantAnswers:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = EMInstantAnswer;
  v8 = [(EMInstantAnswer *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, a4);
    if ([v6 instantAnswersKind])
    {
      if ([v6 instantAnswersKind] != 1)
      {
LABEL_7:
        v13 = [MEMORY[0x1E696AFB0] UUID];
        v14 = [v13 UUIDString];
        bodyCardSectionID = v9->_bodyCardSectionID;
        v9->_bodyCardSectionID = v14;

        v16 = [MEMORY[0x1E696AFB0] UUID];
        v17 = [v16 UUIDString];
        buttonsCardSectionID = v9->_buttonsCardSectionID;
        v9->_buttonsCardSectionID = v17;

        goto LABEL_8;
      }

      v10 = [[EMInstantAnswerHotel alloc] initWithCSInstantAnswers:v6];
      v11 = 24;
    }

    else
    {
      v10 = [[EMInstantAnswerFlight alloc] initWithCSInstantAnswers:v6];
      v11 = 16;
    }

    v12 = *(&v9->super.isa + v11);
    *(&v9->super.isa + v11) = v10;

    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (EMInstantAnswer)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EMInstantAnswer;
  v5 = [(EMInstantAnswer *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flight"];
    flight = v5->_flight;
    v5->_flight = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hotel"];
    hotel = v5->_hotel;
    v5->_hotel = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_bodyCardSectionID"];
    bodyCardSectionID = v5->_bodyCardSectionID;
    v5->_bodyCardSectionID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_buttonsCardSectionID"];
    buttonsCardSectionID = v5->_buttonsCardSectionID;
    v5->_buttonsCardSectionID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(EMInstantAnswer *)self message];
  [v9 encodeObject:v4 forKey:@"EFPropertyKey_message"];

  v5 = [(EMInstantAnswer *)self flight];
  [v9 encodeObject:v5 forKey:@"EFPropertyKey_flight"];

  v6 = [(EMInstantAnswer *)self hotel];
  [v9 encodeObject:v6 forKey:@"EFPropertyKey_hotel"];

  v7 = [(EMInstantAnswer *)self bodyCardSectionID];
  [v9 encodeObject:v7 forKey:@"EFPropertyKey_bodyCardSectionID"];

  v8 = [(EMInstantAnswer *)self buttonsCardSectionID];
  [v9 encodeObject:v8 forKey:@"EFPropertyKey_buttonsCardSectionID"];
}

@end