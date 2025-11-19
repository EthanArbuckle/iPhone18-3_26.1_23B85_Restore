@interface RWIProtocolDOMNode
@end

@implementation RWIProtocolDOMNode

__CFString *__86__RWIProtocolDOMNode_IKJSInspector__ik_updateWithDOMNode_fullfillChildren_dispatcher___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 nodeId];
LABEL_5:
    v5 = [v3 stringWithFormat:@"%i", v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v2 ITMLID];
    goto LABEL_5;
  }

  v5 = &stru_2866C1E60;
LABEL_7:

  return v5;
}

@end