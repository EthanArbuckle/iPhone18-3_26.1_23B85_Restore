@interface DTSForceGestureRecognizer
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation DTSForceGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = DTSForceGestureRecognizer;
  [(DTSForceGestureRecognizer *)&v3 reset];
  self->_startTime = 0.0;
  self->_hasSufficientForce = 0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DTSForceGestureRecognizer;
  v6 = a3;
  [(DTSForceGestureRecognizer *)&v9 touchesBegan:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [v7 timestamp];
  self->_startTime = v8;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = DTSForceGestureRecognizer;
  [(DTSForceGestureRecognizer *)&v23 touchesMoved:v6 withEvent:a4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v19 + 1) + 8 * i) force];
        if (!self->_hasSufficientForce)
        {
          self->_hasSufficientForce = v12 >= 2.0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = [v7 anyObject];
  [v13 timestamp];
  v15 = v14;
  startTime = self->_startTime;

  v17 = [(DTSForceGestureRecognizer *)self state];
  if (!self->_hasSufficientForce && v15 - startTime > 0.2 && v17 <= 1)
  {
    [(DTSForceGestureRecognizer *)self setState:5, v15 - startTime];
  }
}

- (void)setState:(int64_t)a3
{
  if (a3 == 1)
  {
    if (self->_hasSufficientForce)
    {
      a3 = 1;
    }

    else
    {
      a3 = 5;
    }
  }

  v6 = v3;
  v7 = v4;
  v5.receiver = self;
  v5.super_class = DTSForceGestureRecognizer;
  [(DTSForceGestureRecognizer *)&v5 setState:a3];
}

@end