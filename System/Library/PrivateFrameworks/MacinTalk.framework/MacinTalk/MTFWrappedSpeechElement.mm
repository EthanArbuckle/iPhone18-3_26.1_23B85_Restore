@interface MTFWrappedSpeechElement
+ (id)fromCPPElement:(void *)element;
- (MTFWrappedSpeechElement)FirstChild;
- (MTFWrappedSpeechElement)LastChild;
- (MTFWrappedSpeechElement)NextSibling;
- (MTFWrappedSpeechElement)Parent;
- (MTFWrappedSpeechElement)PrevSibling;
- (MTFWrappedSpeechElement)initWithCppElement:(void *)element;
- (void)dealloc;
@end

@implementation MTFWrappedSpeechElement

- (MTFWrappedSpeechElement)initWithCppElement:(void *)element
{
  v7.receiver = self;
  v7.super_class = MTFWrappedSpeechElement;
  v4 = [(MTFWrappedSpeechElement *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MTFWrappedSpeechElement *)v4 setWrapped:element];
  }

  return v5;
}

- (MTFWrappedSpeechElement)FirstChild
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][16]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)LastChild
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][24]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)Parent
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][32]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)NextSibling
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][40]];
  [v2 setUnOwned:1];

  return v2;
}

- (MTFWrappedSpeechElement)PrevSibling
{
  v2 = [MTFWrappedSpeechElement fromCPPElement:[(MTFWrappedSpeechElement *)self elem][48]];
  [v2 setUnOwned:1];

  return v2;
}

+ (id)fromCPPElement:(void *)element
{
  if (element)
  {
    v5 = *element;
    v6 = **element;
    if (v7)
    {
      elementCopy = v7;
      v9 = off_279851430;
    }

    else
    {
      v12 = *v5;
      if (v13)
      {
        elementCopy = v13;
        v9 = off_279851420;
      }

      else
      {
        v14 = *v5;
        if (v15)
        {
          elementCopy = v15;
          v9 = off_279851418;
        }

        else
        {
          v16 = *v5;
          if (v17)
          {
            elementCopy = v17;
            v9 = off_279851448;
          }

          else
          {
            v18 = *v5;
            if (v19)
            {
              elementCopy = v19;
              v9 = off_279851410;
            }

            else
            {
              v20 = *v5;
              if (v21)
              {
                elementCopy = v21;
                v9 = off_279851440;
              }

              else
              {
                v22 = *v5;
                if (v23)
                {
                  elementCopy = v23;
                  v9 = off_279851428;
                }

                else
                {
                  v24 = *v5;
                  v9 = off_279851408;
                  if (v25)
                  {
                    elementCopy = v25;
                  }

                  else
                  {
                    v9 = off_279851438;
                    elementCopy = element;
                  }
                }
              }
            }
          }
        }
      }
    }

    v10 = [objc_alloc(*v9) initWithCppElement:elementCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  if (![(MTFWrappedSpeechElement *)self unOwned])
  {
    elem = [(MTFWrappedSpeechElement *)self elem];
    if (elem)
    {
      (*(elem->var0 + 2))(elem);
    }
  }

  v4.receiver = self;
  v4.super_class = MTFWrappedSpeechElement;
  [(MTFWrappedSpeechElement *)&v4 dealloc];
}

@end