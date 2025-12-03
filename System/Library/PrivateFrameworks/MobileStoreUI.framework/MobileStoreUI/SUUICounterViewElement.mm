@interface SUUICounterViewElement
- (SUUICounterViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)currentNumberValue;
@end

@implementation SUUICounterViewElement

- (SUUICounterViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v26.receiver = self;
  v26.super_class = SUUICounterViewElement;
  v9 = [(SUUIViewElement *)&v26 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = [elementCopy getAttribute:@"type"];
  v9->_counterType = [v10 isEqualToString:@"timer"] ^ 1;
  v11 = [elementCopy getAttribute:@"dateFormat"];

  if ([v11 isEqualToString:@"hm"])
  {
    v12 = 3;
LABEL_9:
    v9->_dateFormatType = v12;
    goto LABEL_10;
  }

  if ([v11 isEqualToString:@"hms"])
  {
    v12 = 2;
    goto LABEL_9;
  }

  if (![v11 isEqualToString:@"dhms"])
  {
    v12 = 1;
    goto LABEL_9;
  }

  v9->_dateFormatType = 0;
LABEL_10:
  v13 = [elementCopy getAttribute:@"endDate"];

  if ([v13 length])
  {
    v14 = SUUIViewElementDateWithString(v13);
    endDate = v9->_endDate;
    v9->_endDate = v14;
  }

  v16 = [elementCopy getAttribute:@"timestamp"];

  if ([v16 length])
  {
    v17 = SUUIViewElementDateWithString(v16);
    startValueDate = v9->_startValueDate;
    v9->_startValueDate = v17;
  }

  v19 = [elementCopy getAttribute:@"rate"];
  [v19 doubleValue];
  v9->_changeRatePerSecond = v20;

  v21 = [elementCopy getAttribute:@"numberFormat"];
  numberFormat = v9->_numberFormat;
  v9->_numberFormat = v21;

  v23 = [elementCopy getAttribute:@"value"];
  v9->_startValue = [v23 longLongValue];

  v24 = [elementCopy getAttribute:@"endValue"];
  v9->_stopValue = [v24 longLongValue];

LABEL_15:
  return v9;
}

- (int64_t)currentNumberValue
{
  stopValue = [(SUUICounterViewElement *)self stopValue];
  startValueDate = [(SUUICounterViewElement *)self startValueDate];
  if (startValueDate)
  {
    [(SUUICounterViewElement *)self changeRatePerSecond];
    v6 = v5;
    startValue = [(SUUICounterViewElement *)self startValue];
    date = [MEMORY[0x277CBEAA8] date];
    startValueDate2 = [(SUUICounterViewElement *)self startValueDate];
    [date timeIntervalSinceDate:startValueDate2];
    v11 = (startValue + v10 * v6);

    if (stopValue >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = stopValue;
    }

    if (stopValue <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = stopValue;
    }

    if (v6 >= 0.0)
    {
      stopValue = v12;
    }

    else
    {
      stopValue = v13;
    }
  }

  return stopValue;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SUUICounterViewElement;
  v5 = [(SUUIViewElement *)&v15 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    [(SUUICounterViewElement *)elementCopy changeRatePerSecond];
    self->_changeRatePerSecond = v7;
    self->_counterType = [(SUUICounterViewElement *)elementCopy counterType];
    self->_dateFormatType = [(SUUICounterViewElement *)elementCopy dateFormatType];
    endDate = [(SUUICounterViewElement *)elementCopy endDate];
    endDate = self->_endDate;
    self->_endDate = endDate;

    numberFormat = [(SUUICounterViewElement *)elementCopy numberFormat];
    numberFormat = self->_numberFormat;
    self->_numberFormat = numberFormat;

    self->_startValue = [(SUUICounterViewElement *)elementCopy startValue];
    startValueDate = [(SUUICounterViewElement *)elementCopy startValueDate];
    startValueDate = self->_startValueDate;
    self->_startValueDate = startValueDate;

    self->_stopValue = [(SUUICounterViewElement *)elementCopy stopValue];
  }

  return v6;
}

@end