@interface MUISearchInstantAnswersSuggestion
- (EMCollectionItemID)itemID;
- (MUISearchInstantAnswersSuggestion)initWithInstantAnswer:(id)a3;
- (MUISearchInstantAnswersSuggestion)initWithMessage:(id)a3 instantAnswer:(id)a4 messageList:(id)a5;
- (id)_conversationID;
- (void)populateInlineCard;
@end

@implementation MUISearchInstantAnswersSuggestion

- (MUISearchInstantAnswersSuggestion)initWithInstantAnswer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MUISearchInstantAnswersSuggestion;
  v5 = [(MUISearchInstantAnswersSuggestion *)&v10 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  if ([v4 instantAnswersKind])
  {
    if ([v4 instantAnswersKind] != 1)
    {
      goto LABEL_7;
    }

    v6 = [[MUISearchInstantAnswer alloc] initHotelAnswerWithCSInstantAnswer:v4];
  }

  else
  {
    v6 = [[MUISearchInstantAnswer alloc] initFlightAnswerWithCSInstantAnswer:v4];
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

- (MUISearchInstantAnswersSuggestion)initWithMessage:(id)a3 instantAnswer:(id)a4 messageList:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MUISearchInstantAnswersSuggestion;
  v12 = [(MUISearchInstantAnswersSuggestion *)&v18 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v12->_message, a3);
  objc_storeStrong(&v13->_messageList, a5);
  if (![v10 instantAnswersKind])
  {
    v14 = [[MUISearchInstantAnswer alloc] initFlightAnswerWithCSInstantAnswer:v10];
    goto LABEL_6;
  }

  if ([v10 instantAnswersKind] == 1)
  {
    v14 = [[MUISearchInstantAnswer alloc] initHotelAnswerWithCSInstantAnswer:v10];
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
  v3 = [(MUISearchInstantAnswersSuggestion *)self message];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "conversationID")}];
  v5 = [v4 stringValue];

  return v5;
}

- (EMCollectionItemID)itemID
{
  v2 = [(MUISearchInstantAnswersSuggestion *)self message];
  v3 = [v2 itemID];

  return v3;
}

- (void)populateInlineCard
{
  v3 = [(MUISearchInstantAnswer *)self->_instantAnswer instantAnswersKind];
  instantAnswer = self->_instantAnswer;
  if (v3)
  {
    if ([(MUISearchInstantAnswer *)instantAnswer instantAnswersKind]!= 1)
    {
      v6 = 0;
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v7 = [(MUISearchInstantAnswer *)instantAnswer flightCheckInUrl];
  if (v7)
  {
    v6 = 1;
  }

  else
  {
    if ([(MUISearchInstantAnswer *)self->_instantAnswer instantAnswersKind]== 1)
    {
LABEL_3:
      v5 = [(MUISearchInstantAnswer *)self->_instantAnswer hotelReservationForAddress];
      v6 = v5 != 0;

      if (v3)
      {
        goto LABEL_11;
      }

      v7 = 0;
      goto LABEL_10;
    }

    v7 = 0;
    v6 = 0;
  }

LABEL_10:

LABEL_11:
  v8 = MEMORY[0x277D06E70];
  v12 = [(MUISearchInstantAnswer *)self->_instantAnswer bodyCardSectionID];
  v9 = [(MUISearchInstantAnswer *)self->_instantAnswer buttonsCardSectionID];
  v10 = [v8 inlineCardWithManageReservationButton:v6 bodyCardSectionID:v12 buttonsCardSectionID:v9];
  feedbackInlineCard = self->_feedbackInlineCard;
  self->_feedbackInlineCard = v10;
}

@end