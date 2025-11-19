@interface CHPointStrokeFIFO
- (CHPointStrokeFIFO)initWithFIFO:(id)a3;
- (void)addPoint:(CHPointStrokeFIFO *)self;
- (void)clear;
- (void)flush;
@end

@implementation CHPointStrokeFIFO

- (CHPointStrokeFIFO)initWithFIFO:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHPointStrokeFIFO;
  v5 = [(CHPointFIFO *)&v9 initWithFIFO:v4];
  if (v5)
  {
    v6 = objc_alloc_init(CHDrawing);
    drawing = v5->_drawing;
    v5->_drawing = v6;

    objc_storeStrong(&v5->_strokes, v5->_drawing);
  }

  return v5;
}

- (void)addPoint:(CHPointStrokeFIFO *)self
{
  v8 = *&v6;
  objc_msgSend_addPoint_(self->_drawing, a2, v2, v3, v4, v5, vcvtq_f64_f32(v6));
  v9.receiver = self;
  v9.super_class = CHPointStrokeFIFO;
  [(CHPointFIFO *)&v9 addPoint:v8];
}

- (void)flush
{
  objc_msgSend_endStroke(self->_drawing, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = CHPointStrokeFIFO;
  [(CHPointFIFO *)&v7 flush];
}

- (void)clear
{
  objc_msgSend_clear(self->_drawing, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = CHPointStrokeFIFO;
  [(CHPointFIFO *)&v7 clear];
}

@end