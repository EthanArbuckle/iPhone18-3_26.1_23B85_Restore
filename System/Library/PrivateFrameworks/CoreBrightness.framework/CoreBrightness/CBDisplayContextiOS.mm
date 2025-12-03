@interface CBDisplayContextiOS
- (CBDisplayContextiOS)initWithQueue:(id)queue andBrtCtl:(id)ctl andConfig:(id)config andTwilight:(id)twilight andAmmolite:(id)ammolite andGCP:(id)p;
- (void)dealloc;
@end

@implementation CBDisplayContextiOS

- (CBDisplayContextiOS)initWithQueue:(id)queue andBrtCtl:(id)ctl andConfig:(id)config andTwilight:(id)twilight andAmmolite:(id)ammolite andGCP:(id)p
{
  selfCopy = self;
  v22 = a2;
  queueCopy = queue;
  ctlCopy = ctl;
  configCopy = config;
  twilightCopy = twilight;
  ammoliteCopy = ammolite;
  pCopy = p;
  v15.receiver = self;
  v15.super_class = CBDisplayContextiOS;
  selfCopy = [(CBDisplayContextiOS *)&v15 init];
  v8 = MEMORY[0x1E69E5928](queueCopy);
  selfCopy->_displayQueue = v8;
  v9 = MEMORY[0x1E69E5928](ctlCopy);
  selfCopy->_brtCtl = v9;
  v10 = MEMORY[0x1E69E5928](configCopy);
  selfCopy->_configuration = v10;
  v11 = MEMORY[0x1E69E5928](twilightCopy);
  selfCopy->_twilight = v11;
  v12 = MEMORY[0x1E69E5928](ammoliteCopy);
  selfCopy->_ammolite = v12;
  v13 = MEMORY[0x1E69E5928](pCopy);
  selfCopy->_gcp = v13;
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_displayQueue);
  MEMORY[0x1E69E5920](selfCopy->_brtCtl);
  MEMORY[0x1E69E5920](selfCopy->_configuration);
  MEMORY[0x1E69E5920](selfCopy->_twilight);
  MEMORY[0x1E69E5920](selfCopy->_ammolite);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_gcp).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBDisplayContextiOS;
  [(CBDisplayContextiOS *)&v3 dealloc];
}

@end