@interface MUISearchInstantAnswersSuggestion
- (EMCollectionItemID)itemID;
- (MUISearchInstantAnswersSuggestion)initWithInstantAnswer:(id)answer;
- (MUISearchInstantAnswersSuggestion)initWithMessage:(id)message instantAnswer:(id)answer messageList:(id)list;
- (id)_conversationID;
- (void)populateInlineCard;
@end

@implementation MUISearchInstantAnswersSuggestion

- (MUISearchInstantAnswersSuggestion)initWithInstantAnswer:(id)answer
{
  answerCopy = answer;
  v10.receiver = self;
  v10.super_class = MUISearchInstantAnswersSuggestion;
  v5 = [(MUISearchInstantAnswersSuggestion *)&v10 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  if ([answerCopy instantAnswersKind])
  {
    if ([answerCopy instantAnswersKind] != 1)
    {
      goto LABEL_7;
    }

    v6 = [[MUISearchInstantAnswer alloc] initHotelAnswerWithCSInstantAnswer:answerCopy];
  }

  else
  {
    v6 = [[MUISearchInstantAnswer alloc] initFlightAnswerWithCSInstantAnswer:answerCopy];
  }

  instantAnswer = v5->_instantAnswer;
  v5->_instantAnswer = v6;

LABEL_7:
  if (!v5->_instantAnswer)
  {
    v8 = 0;
    goto LABEL_10;
  }

LABEL_8:
  v8 = v5;
LABEL_10:

  return v8;
}

- (MUISearchInstantAnswersSuggestion)initWithMessage:(id)message instantAnswer:(id)answer messageList:(id)list
{
  messageCopy = message;
  answerCopy = answer;
  listCopy = list;
  v18.receiver = self;
  v18.super_class = MUISearchInstantAnswersSuggestion;
  v12 = [(MUISearchInstantAnswersSuggestion *)&v18 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v12->_message, message);
  objc_storeStrong(&v13->_messageList, list);
  if (![answerCopy instantAnswersKind])
  {
    v14 = [[MUISearchInstantAnswer alloc] initFlightAnswerWithCSInstantAnswer:answerCopy];
    goto LABEL_6;
  }

  if ([answerCopy instantAnswersKind] == 1)
  {
    v14 = [[MUISearchInstantAnswer alloc] initHotelAnswerWithCSInstantAnswer:answerCopy];
LABEL_6:
    instantAnswer = v13->_instantAnswer;
    v13->_instantAnswer = v14;
  }

  if (!v13->_instantAnswer)
  {
    v16 = 0;
    goto LABEL_11;
  }

  [(MUISearchInstantAnswersSuggestion *)v13 populateInlineCard];
LABEL_9:
  v16 = v13;
LABEL_11:

  return v16;
}

- (id)_conversationID
{
  v2 = MEMORY[0x277CCABB0];
  message = [(MUISearchInstantAnswersSuggestion *)self message];
  v4 = [v2 numberWithLongLong:{objc_msgSend(message, "conversationID")}];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (EMCollectionItemID)itemID
{
  message = [(MUISearchInstantAnswersSuggestion *)self message];
  itemID = [message itemID];

  return itemID;
}

- (void)populateInlineCard
{
  instantAnswersKind = [(MUISearchInstantAnswer *)self->_instantAnswer instantAnswersKind];
  instantAnswer = self->_instantAnswer;
  if (instantAnswersKind)
  {
    if ([(MUISearchInstantAnswer *)instantAnswer instantAnswersKind]!= 1)
    {
      v6 = 0;
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  flightCheckInUrl = [(MUISearchInstantAnswer *)instantAnswer flightCheckInUrl];
  if (flightCheckInUrl)
  {
    v6 = 1;
  }

  else
  {
    if ([(MUISearchInstantAnswer *)self->_instantAnswer instantAnswersKind]== 1)
    {
LABEL_3:
      hotelReservationForAddress = [(MUISearchInstantAnswer *)self->_instantAnswer hotelReservationForAddress];
      v6 = hotelReservationForAddress != 0;

      if (instantAnswersKind)
      {
        goto LABEL_11;
      }

      flightCheckInUrl = 0;
      goto LABEL_10;
    }

    flightCheckInUrl = 0;
    v6 = 0;
  }

LABEL_10:

LABEL_11:
  v8 = MEMORY[0x277D06E70];
  bodyCardSectionID = [(MUISearchInstantAnswer *)self->_instantAnswer bodyCardSectionID];
  buttonsCardSectionID = [(MUISearchInstantAnswer *)self->_instantAnswer buttonsCardSectionID];
  v10 = [v8 inlineCardWithManageReservationButton:v6 bodyCardSectionID:bodyCardSectionID buttonsCardSectionID:buttonsCardSectionID];
  feedbackInlineCard = self->_feedbackInlineCard;
  self->_feedbackInlineCard = v10;
}

@end