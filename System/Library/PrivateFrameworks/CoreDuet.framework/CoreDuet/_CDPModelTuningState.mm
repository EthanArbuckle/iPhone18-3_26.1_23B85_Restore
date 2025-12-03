@interface _CDPModelTuningState
+ (id)initialTuningState;
- (_CDPModelTuningState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDPModelTuningState

+ (id)initialTuningState
{
  v2 = objc_alloc_init(self);
  LODWORD(v3) = -1.0;
  [v2 setBestScore:v3];

  return v2;
}

- (_CDPModelTuningState)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = _CDPModelTuningState;
  coderCopy = coder;
  v4 = [(_CDPModelTuningState *)&v9 init];
  -[_CDPModelTuningState setI:](v4, "setI:", [coderCopy decodeIntForKey:{@"i", v9.receiver, v9.super_class}]);
  -[_CDPModelTuningState setJ:](v4, "setJ:", [coderCopy decodeIntForKey:@"j"]);
  [coderCopy decodeFloatForKey:@"bestLogLambda"];
  [(_CDPModelTuningState *)v4 setBestLogLambda:?];
  [coderCopy decodeFloatForKey:@"bestW0"];
  [(_CDPModelTuningState *)v4 setBestW0:?];
  [coderCopy decodeFloatForKey:@"bestScore"];
  [(_CDPModelTuningState *)v4 setBestScore:?];
  [coderCopy decodeFloatForKey:@"bestThreshold"];
  v6 = v5;

  LODWORD(v7) = v6;
  [(_CDPModelTuningState *)v4 setBestThreshold:v7];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p:i=%d, j=%d, bestScore=%g, bestLogLambda=%g, bestW0=%g, bestThreshold=%g>", v5, self, self->_i, self->_j, self->_bestScore, self->_bestLogLambda, self->_bestW0, self->_bestThreshold];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[_CDPModelTuningState i](self forKey:{"i"), @"i"}];
  [coderCopy encodeInt:-[_CDPModelTuningState j](self forKey:{"j"), @"j"}];
  [(_CDPModelTuningState *)self bestLogLambda];
  [coderCopy encodeFloat:@"bestLogLambda" forKey:?];
  [(_CDPModelTuningState *)self bestW0];
  [coderCopy encodeFloat:@"bestW0" forKey:?];
  [(_CDPModelTuningState *)self bestScore];
  [coderCopy encodeFloat:@"bestScore" forKey:?];
  [(_CDPModelTuningState *)self bestThreshold];
  [coderCopy encodeFloat:@"bestThreshold" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = +[_CDPModelTuningState initialTuningState];
  [v4 setI:{-[_CDPModelTuningState i](self, "i")}];
  [v4 setJ:{-[_CDPModelTuningState j](self, "j")}];
  [(_CDPModelTuningState *)self bestLogLambda];
  [v4 setBestLogLambda:?];
  [(_CDPModelTuningState *)self bestW0];
  [v4 setBestW0:?];
  [(_CDPModelTuningState *)self bestScore];
  [v4 setBestScore:?];
  [(_CDPModelTuningState *)self bestThreshold];
  [v4 setBestThreshold:?];
  return v4;
}

@end